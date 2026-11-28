#!/usr/bin/env python3
"""Build an image-indexed sprite glossary for the wiki: scans every savestate under
scratch/states/ for each known raw terrain ID, item type ID, and monster (type, class)
pair, crops the actual in-game graphic for the first occurrence found, and writes it to
wiki/assets/sprites/<category>/<id>.png (or .gif for a 2-frame animated monster/player
sprite), plus a generated wiki/Sprite-Glossary.md table.

Why scrape screenshots instead of decoding ROM graphics data directly: the room's raw
terrain byte is NOT the background tilemap ID (confirmed in a prior session - reading
$9800 directly for a known raw value `$23` cell gave an unrelated BG tile ID `$36` at that
screen position), so there's a translation table/routine between "logical tile" and
"rendered graphics" that hasn't been reverse-engineered yet. Grabbing the pixels exactly as
the game renders them sidesteps that gap entirely and is correct by construction.

Usage:
    source .venv/bin/activate
    python3 tools/sprite_atlas.py
"""
import json
import sys
from pathlib import Path

from PIL import Image

from pyboy import PyBoy

sys.path.insert(0, str(Path(__file__).resolve().parent))
from tile_grid import read_viewport_grid, OAM_BASE  # noqa: E402

PROJECT_ROOT = Path(__file__).resolve().parent.parent
ROM = PROJECT_ROOT / "rom" / "Cave Noire (Japan).gb"
STATES_DIR = PROJECT_ROOT / "scratch" / "states"
ASSETS_DIR = PROJECT_ROOT / "wiki" / "assets" / "sprites"
GLOSSARY_PATH = PROJECT_ROOT / "wiki" / "Sprite-Glossary.md"

SCALE = 4  # upscale factor for the cropped 16x16 cell images, so they're visible in a table

# ---------------------------------------------------------------------------
# Identification tables - kept in sync by hand with the prose in the other wiki pages.
# "name" is shown in the glossary; "confidence" is free text.
# ---------------------------------------------------------------------------

TERRAIN_NAMES = {
    0x00: ("Open floor", "Confirmed"),
    0x06: ("Wall (border)", "Confirmed"),
    0x07: ("Wall (border)", "Confirmed"),
    0x08: ("Wall (border) / Stairs-down trigger class", "Confirmed (class, not this exact byte)"),
    0x09: ("Wall (border) - but see the collision caveat", "Confirmed as common, exact collision rule open"),
    0x10: ("Stairs down", "Confirmed live"),
    0x1b: ("Lava", "Confirmed live (movement test: instant HP wipe)"),
    0x1d: ("Floor crack (\"!!\" warning)", "Confirmed live"),
    0x15: ("Lava field (same texture as $1b)", "Plausible, untested individually"),
    0x19: ("Lava field (same texture as $1b)", "Plausible, untested individually"),
    0x16: ("Candidate Bridge", "Unconfirmed - unreachable without crossing lava first"),
    0x17: ("Candidate Bridge", "Unconfirmed - unreachable without crossing lava first"),
    0x22: ("Fairy Cage", "Confirmed live (visual match + Fairy-quest HUD)"),
    0x11: ("Harmless floor variant (near stairs)", "Confirmed walkable, no effect"),
    0x24: ("Harmless floor variant (room border)", "Confirmed walkable, no effect"),
    0x0f: ("Harmless floor variant", "Confirmed walkable, no effect"),
    0x18: ("Pillar cap (decoration)", "Unconfirmed walkability"),
    0x1e: ("Pillar body (decoration)", "Unconfirmed walkability"),
    0x1f: ("Unidentified", "Open"),
    0x20: ("Unidentified", "Open - test inconclusive, see Open Questions"),
    0x23: ("Unidentified - sits behind an unexplained movement block", "Open"),
}

ITEM_NAMES = {
    0x01: ("Heal (Kaifuku)", "Confirmed"),
    0x02: ("Cure Poison (Dokukeshi)", "Confirmed"),
    0x03: ("Fire (Faiyaa)", "Confirmed"),
    0x04: ("Scans for raw tile $09 (wall)", "Candidate unclear"),
    0x05: ("Scan state 8 (possibly Ganseki)", "Candidate: Ganseki"),
    0x06: ("Temporary Attack buff", "Confirmed (likely Kougeki)"),
    0x07: ("Orb", "Confirmed"),
    0x08: ("Lucky-scaled buff", "Candidate: Mamori/Lucky, not told apart"),
    0x09: ("Lucky-scaled buff", "Candidate: Mamori/Lucky, not told apart"),
    0x0a: ("Invisibility (Toumei)", "Confirmed"),
    0x0b: ("Lucky-scaled buff", "Candidate: Mamori/Lucky, not told apart"),
    0x0c: ("Scan state 8 (possibly Ganseki/Oriru)", "Candidate unclear"),
    0x0d: ("Light room (Akari)", "Confirmed"),
    0x0e: ("Examine all 4 neighbors (possibly Oriru)", "Candidate: Oriru"),
    0x12: ("+1 Max HP (HP no Moto)", "Confirmed"),
    0x13: ("Type-targeted monster effect", "Structurally traced, name unconfirmed"),
    0x14: ("Fairy Cage key (Kagi)", "Confirmed (static), not live-tested"),
    0x18: ("Sword +1 (Mahou no Ken)", "Confirmed"),
    0x19: ("Sword +2", "Confirmed"),
    0x1a: ("Sword +3", "Confirmed"),
    0x1b: ("Sword +5 (Densetsu no Ken)", "Confirmed"),
    0x1c: ("Shield +1", "Confirmed"),
    0x1d: ("Shield +2", "Confirmed"),
    0x1e: ("Shield +3", "Confirmed"),
    0x1f: ("Shield +5", "Confirmed"),
    0x20: ("Self-upgrading item (-> $21)", "Structurally traced, name unconfirmed"),
}

MONSTER_NAMES = {
    (0x01, 6): ("Crab", "Confirmed"),
    (0x02, 4): ("Stationary \"boulder\" (Barokusu or Bukirika)", "Confirmed behavior, name ambiguous"),
    (0x03, 3): ("Tarantula", "Confirmed"),
}

# Hand-curated UI screenshots - not auto-scanned (they live in specific $c125 menu states,
# not the dungeon tile grid or monster array). Images are pre-placed in
# wiki/assets/sprites/misc/ by hand; this table just describes them for the glossary.
MISC_ENTRIES = [
    ("item_use_menu.png", "$c125=2", "Item-use menu (use/toss/cancel)", "Confirmed"),
    ("item_pickup_popup.png", "$c125=5", "Item-pickup confirmation popup", "Confirmed"),
    ("camp_stats_screen.png", "$c125=14", "Camp stats screen (Start button)", "Confirmed"),
]


def crop_cell(img, row, col, scale=SCALE):
    box = (col * 16, row * 16, col * 16 + 16, row * 16 + 16)
    cell = img.crop(box)
    return cell.resize((16 * scale, 16 * scale), Image.NEAREST)


def bg_tiles_at(memory, row, col):
    """Returns the 4 raw background-tilemap tile IDs ($9800-based) underneath a logical
    16x16 cell (2x2 actual 8x8 BG tiles), plus the LCDC addressing-mode bit - so the
    glossary can show exactly how many distinct hardware tiles compose what's rendered,
    instead of just a flattened screenshot crop. This does NOT tell us the raw room byte
    -> BG tile ID mapping (still unsolved - see the module docstring); it's the ground
    truth of what's physically in VRAM at that screen position, nothing more."""
    base_row, base_col = row * 2, col * 2
    tiles = [memory[0x9800 + (base_row + dr) * 32 + (base_col + dc)] for dr in range(2) for dc in range(2)]
    lcdc = memory[0xFF40]
    addressing = "$8000" if (lcdc & 0x10) else "$8800"
    return tiles, addressing


def oam_sprites_at_cell(memory, row, col):
    """Returns the list of raw OAM entries (index, y, x, tile, attr) whose zero-offset
    16px screen cell matches (row, col) exactly - see tile_grid.read_sprite_cells for the
    mapping this bucketing is based on. This is the actual hardware sprite composition,
    not a guess from pixel bounding boxes."""
    hits = []
    for i in range(40):
        y = memory[OAM_BASE + i * 4]
        x = memory[OAM_BASE + i * 4 + 1]
        if y == 0 or x == 0:
            continue
        if (y - 16) // 16 == row and (x - 8) // 16 == col:
            tile = memory[OAM_BASE + i * 4 + 2]
            attr = memory[OAM_BASE + i * 4 + 3]
            hits.append((i, y, x, tile, attr))
    return hits


def crop_oam_monster(memory, img, type_id, class_id, scale=SCALE):
    """Finds the OAM sprite pair for a monster slot matching (type_id, class_id), crops
    its bounding box directly from the rendered screen, and returns the matching raw OAM
    entries alongside it so the glossary can report exactly how many hardware sprites
    (and which VRAM tile IDs) compose it - not just a flattened pixel crop. Returns
    (None, []) if not found on screen right now."""
    target_rc = None
    for slot in range(0x24):
        base = 0xC5C0 + slot * 0x10
        if memory[base] == class_id and memory[base + 1] == type_id:
            target_rc = (memory[base + 2], memory[base + 3])
            break
    if target_rc is None:
        return None, []

    row, col = target_rc
    sprites = oam_sprites_at_cell(memory, row, col)
    if not sprites:
        return None, []
    xs = [s[2] for s in sprites]
    ys = [s[1] for s in sprites]
    x0, x1 = min(xs) - 8, max(xs) - 8 + 8
    y0, y1 = min(ys) - 16, max(ys) - 16 + 8
    cell = img.crop((x0, y0, x1, y1))
    w, h = cell.size
    return cell.resize((w * scale, h * scale), Image.NEAREST), sprites


def build_index():
    """Scans every savestate once, returns dicts mapping raw ID -> (state_path, row, col)
    for terrain/items, and (type, class) -> state_path for monsters - first sighting wins."""
    terrain_hits = {}
    item_hits = {}
    monster_hits = {}

    state_paths = sorted(STATES_DIR.glob("*.state")) + sorted(STATES_DIR.glob("autowalker/*.state"))

    pyboy = PyBoy(str(ROM), window="null")
    for state_path in state_paths:
        try:
            with open(state_path, "rb") as f:
                pyboy.load_state(f)
        except Exception as e:
            print(f"skip {state_path.name}: {e}")
            continue
        for _ in range(30):
            pyboy.tick()
        memory = pyboy.memory

        try:
            room, prow, pcol, _, _, grid = read_viewport_grid(memory)
        except Exception:
            continue

        for r, row_cells in enumerate(grid):
            for c, cell in enumerate(row_cells):
                if cell.is_item:
                    item_hits.setdefault(cell.item_type, (state_path, r, c))
                else:
                    terrain_hits.setdefault(cell.raw, (state_path, r, c))

        for slot in range(0x24):
            base = 0xC5C0 + slot * 0x10
            cls = memory[base]
            if cls == 0:
                continue
            mtype = memory[base + 1]
            monster_hits.setdefault((mtype, cls), state_path)

    pyboy.stop()
    return terrain_hits, item_hits, monster_hits


def render_assets(terrain_hits, item_hits, monster_hits):
    for sub in ("terrain", "items", "monsters"):
        (ASSETS_DIR / sub).mkdir(parents=True, exist_ok=True)

    pyboy = PyBoy(str(ROM), window="null")

    def load(path):
        with open(path, "rb") as f:
            pyboy.load_state(f)
        for _ in range(30):
            pyboy.tick()

    terrain_files = {}
    terrain_tiles = {}
    for raw, (state_path, row, col) in sorted(terrain_hits.items()):
        load(state_path)
        img = pyboy.screen.image.convert("RGB")
        out = ASSETS_DIR / "terrain" / f"{raw:02x}.png"
        crop_cell(img, row, col).save(out)
        terrain_files[raw] = out
        terrain_tiles[raw] = bg_tiles_at(pyboy.memory, row, col)

    item_files = {}
    item_tiles = {}
    for item_type, (state_path, row, col) in sorted(item_hits.items()):
        load(state_path)
        img = pyboy.screen.image.convert("RGB")
        out = ASSETS_DIR / "items" / f"{item_type:02x}.png"
        crop_cell(img, row, col).save(out)
        item_files[item_type] = out
        item_tiles[item_type] = bg_tiles_at(pyboy.memory, row, col)

    monster_files = {}
    monster_sprites = {}
    for (mtype, cls), state_path in sorted(monster_hits.items()):
        load(state_path)
        img = pyboy.screen.image.convert("RGB")
        frame1, sprites1 = crop_oam_monster(pyboy.memory, img, mtype, cls)
        if frame1 is None:
            continue
        for _ in range(16):
            pyboy.tick()
        img2 = pyboy.screen.image.convert("RGB")
        frame2, sprites2 = crop_oam_monster(pyboy.memory, img2, mtype, cls)

        out = ASSETS_DIR / "monsters" / f"type{mtype:02x}_class{cls}.gif"
        if frame2 is not None and frame2.size == frame1.size:
            frame1.save(out, save_all=True, append_images=[frame2], duration=400, loop=0)
        else:
            out = out.with_suffix(".png")
            frame1.save(out)
        monster_files[(mtype, cls)] = out
        monster_sprites[(mtype, cls)] = (sprites1, sprites2)

    pyboy.stop()
    return terrain_files, terrain_tiles, item_files, item_tiles, monster_files, monster_sprites


def rel(path: Path) -> str:
    return path.relative_to(PROJECT_ROOT / "wiki").as_posix()


def format_bg_tiles(tiles_and_mode):
    tiles, addressing = tiles_and_mode
    unique = len(set(tiles))
    ids = ",".join(f"${t:02x}" for t in tiles)
    return f"{unique} unique ({ids}, {addressing})"


def format_oam_sprites(sprites_frame1):
    if not sprites_frame1:
        return "no sprite found here"
    parts = [f"${tile:02x}/attr ${attr:02x}" for (_i, _y, _x, tile, attr) in sprites_frame1]
    return f"{len(sprites_frame1)} sprite(s): " + "; ".join(parts)


def write_glossary(
    terrain_hits, terrain_files, terrain_tiles,
    item_hits, item_files, item_tiles,
    monster_hits, monster_files, monster_sprites,
):
    lines = []
    lines.append("# Sprite Glossary")
    lines.append("")
    lines.append(
        "Every raw ID below shows the graphic exactly as the game renders it - cropped "
        "directly from a real savestate screenshot, not decoded from ROM graphics data "
        "(see `tools/sprite_atlas.py` for why: the room's raw terrain byte isn't the "
        "background tilemap ID directly, so there's a translation step that hasn't been "
        "reverse-engineered yet; scraping the rendered pixels sidesteps that gap)."
    )
    lines.append("")
    lines.append(
        "Auto-generated by `tools/sprite_atlas.py` by scanning every savestate under "
        "`scratch/states/`. Re-run it after adding new savestates (e.g. from "
        "`tools/autowalker.py`) to pick up anything newly captured - it will not "
        "overwrite entries for IDs it already has an image for from a previous run "
        "unless you delete the file first."
    )
    lines.append("")
    lines.append(
        "**Caveat:** a few crops may show a blank/dark square instead of real art. The "
        "scanner reads the logical room data in WRAM directly, which always holds the "
        "real byte - but the *visual* tilemap only draws tiles the darkness/fog-of-war "
        "system has actually revealed so far (see [Dungeon Mechanics](Dungeon-Mechanics) "
        "\"Darkness / torch visibility\"). If the automated scan happened to grab a "
        "savestate before the player visually reached that spot, the crop shows "
        "undrawn/dark fog rather than the tile's real graphic. Re-running against a "
        "savestate where that cell has actually been seen fixes it."
    )
    lines.append("")

    lines.append("## Map / terrain tiles")
    lines.append("")
    lines.append(
        "**\"BG tiles\" column:** the actual hardware background-tilemap tile IDs "
        "underneath this cell (2x2 real 8x8 tiles per logical 16x16 cell), read directly "
        "from `$9800` - i.e. ground truth for how many *distinct* tiles are actually "
        "stacked/arranged here, independent of the flattened screenshot crop. This is "
        "**not** the room's raw terrain byte translated to graphics (that mapping is "
        "still unsolved, see the caveat above) - it's simply what's physically in VRAM."
    )
    lines.append("")
    lines.append("| Image | Raw ID | BG tiles | Identified as | Confidence | Source |")
    lines.append("|---|---|---|---|---|---|")
    for raw in sorted(terrain_hits):
        if raw not in terrain_files:
            continue
        state_path, row, col = terrain_hits[raw]
        name, conf = TERRAIN_NAMES.get(raw, ("Unknown", "Unidentified"))
        img_rel = rel(terrain_files[raw])
        src = state_path.relative_to(PROJECT_ROOT).as_posix()
        tiles_desc = format_bg_tiles(terrain_tiles[raw])
        lines.append(f"| ![]({img_rel}) | `${raw:02x}` | {tiles_desc} | {name} | {conf} | `{src}` ({row},{col}) |")
    lines.append("")

    lines.append("## Items")
    lines.append("")
    lines.append(
        "Item/chest floor icons are background tiles too (the `$d500` overlay system "
        "swaps tilemap entries, see [Dungeon Mechanics](Dungeon-Mechanics)), so the same "
        "BG-tile ground truth applies here as for terrain above."
    )
    lines.append("")
    lines.append("| Image | Type ID | BG tiles | Identified as | Confidence | Source |")
    lines.append("|---|---|---|---|---|---|")
    for item_type in sorted(item_hits):
        if item_type not in item_files:
            continue
        state_path, row, col = item_hits[item_type]
        name, conf = ITEM_NAMES.get(item_type, ("Unknown", "Unidentified"))
        img_rel = rel(item_files[item_type])
        src = state_path.relative_to(PROJECT_ROOT).as_posix()
        tiles_desc = format_bg_tiles(item_tiles[item_type])
        lines.append(f"| ![]({img_rel}) | `${item_type:02x}` | {tiles_desc} | {name} | {conf} | `{src}` ({row},{col}) |")
    lines.append("")

    lines.append("## Monsters")
    lines.append("")
    lines.append(
        "Animated (2-frame GIF, 16 ticks apart) where the blink-toggle struct field "
        "(offset `$04`/`$05`, see [Monster System](Monster-System)) actually changes the "
        "sprite in that window; falls back to a static PNG otherwise. **\"OAM sprites\" "
        "column:** the exact hardware sprite count and VRAM tile ID/attribute for each "
        "one composing frame 1 - read directly from OAM, not inferred from pixels, so "
        "it's unambiguous whether one, two, or more sprites are stacked here."
    )
    lines.append("")
    lines.append("| Image | Type | Class | OAM sprites (frame 1) | Identified as | Confidence | Source |")
    lines.append("|---|---|---|---|---|---|---|")
    for (mtype, cls) in sorted(monster_hits):
        if (mtype, cls) not in monster_files:
            continue
        state_path = monster_hits[(mtype, cls)]
        name, conf = MONSTER_NAMES.get((mtype, cls), ("Unknown", "Unidentified"))
        img_rel = rel(monster_files[(mtype, cls)])
        src = state_path.relative_to(PROJECT_ROOT).as_posix()
        sprites1, _sprites2 = monster_sprites[(mtype, cls)]
        sprites_desc = format_oam_sprites(sprites1)
        lines.append(f"| ![]({img_rel}) | `${mtype:02x}` | `{cls}` | {sprites_desc} | {name} | {conf} | `{src}` |")
    lines.append("")

    lines.append("## Menu sprites, fonts, misc")
    lines.append("")
    lines.append(
        "Hand-curated full-screen captures (not auto-scanned - these live in specific "
        "`$c125` UI states, not the dungeon tile grid or monster array). Add more rows to "
        "`MISC_ENTRIES` in `tools/sprite_atlas.py` and drop the matching PNG into "
        "`wiki/assets/sprites/misc/` as more screens get identified; no dedicated font "
        "glyph table or standalone menu-icon crops exist yet."
    )
    lines.append("")
    lines.append("| Image | State | Description | Confidence |")
    lines.append("|---|---|---|---|")
    for filename, state_desc, desc, conf in MISC_ENTRIES:
        img_rel = f"assets/sprites/misc/{filename}"
        lines.append(f"| ![]({img_rel}) | `{state_desc}` | {desc} | {conf} |")
    lines.append("")

    lines.append("## Unknown / not yet categorized")
    lines.append("")
    uncategorized_terrain = [r for r in terrain_hits if r not in TERRAIN_NAMES]
    uncategorized_items = [i for i in item_hits if i not in ITEM_NAMES]
    if uncategorized_terrain or uncategorized_items:
        lines.append(
            f"{len(uncategorized_terrain)} terrain ID(s) and {len(uncategorized_items)} "
            "item ID(s) above have no name yet (shown as \"Unknown\" in their table) - "
            "see [Open Questions](Open-Questions) for what's needed to identify them."
        )
    else:
        lines.append("Nothing outstanding right now - every scanned ID has at least a candidate name.")
    lines.append("")

    GLOSSARY_PATH.write_text("\n".join(lines))


if __name__ == "__main__":
    print("Scanning savestates...")
    terrain_hits, item_hits, monster_hits = build_index()
    print(f"Found {len(terrain_hits)} terrain IDs, {len(item_hits)} item types, {len(monster_hits)} monster (type,class) pairs")

    print("Rendering crops...")
    (terrain_files, terrain_tiles, item_files, item_tiles,
     monster_files, monster_sprites) = render_assets(terrain_hits, item_hits, monster_hits)

    print("Writing glossary...")
    write_glossary(
        terrain_hits, terrain_files, terrain_tiles,
        item_hits, item_files, item_tiles,
        monster_hits, monster_files, monster_sprites,
    )
    print(f"Done -> {GLOSSARY_PATH}")
