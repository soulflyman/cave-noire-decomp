#!/usr/bin/env python3
"""Headless PyBoy bot that plays Cave Noire semi-randomly and auto-saves a
savestate whenever it sees something not yet documented in the wiki.

Rationale: most entries left in wiki/Open-Questions.md just need *some*
savestate showing a particular tile/item/monster/state - not a specific one.
Rather than hunting those by hand, let the emulator run at full speed with a
dumb movement policy and flag anything new as it goes.

What it watches, each tick:

- Raw terrain tile IDs in the visible room grid not in tile_grid.KNOWN_TERRAIN_IDS
  (catches Lava, the Fairy Cage tile $22, the hypothesized "fake hole", etc.)
- Item type IDs seen either in the inventory or lying on/in a floor cell, not in
  tile_grid.KNOWN_ITEM_TYPES (catches Ganseki/Oriru/Tobu/etc. actually dropping)
- Quest type ($c101) x level ($c102) combinations not seen yet this run+log,
  specifically flagging quest types 3/4 (Orb/Fairy - explicitly requested in
  Open-Questions.md)
- Monster type IDs ($c5c0 array, offset $01) not yet seen - the ~20 StrategyWiki
  types with no confirmed ID yet
- Main dispatcher state ($c100) or movement state ($c125) values outside a
  conservative "already understood" set (see KNOWN_C100/KNOWN_C125 below) -
  catches anything exercising an un-mapped state handler
- The second per-floor "bonus feature" array ($c271-$c27a) going non-empty at
  least once (one-shot - see wiki/Dungeon-Mechanics.md "A second, separate
  per-floor 'bonus feature' roll")

Each discovery dumps a PyBoy savestate + a JSON sidecar with the triggering
detail into scratch/states/autowalker/, and is recorded in
scratch/states/autowalker/seen.json so re-running the bot (even days later,
even with a different RNG path) only reports genuinely new finds.

Does NOT attempt to use items, navigate quest-select menus, or get through the
door/results-screen loop on purpose - those need deliberate, targeted
interaction, not random walking. If the top-level state machine gets stuck in
that loop (or dies) for a while, the bot just reloads its starting savestate
and keeps going, so one Game Over doesn't end the run.

Usage:
    source .venv/bin/activate
    python3 tools/autowalker.py [--rom PATH] [--state PATH] [--ticks N] [--seconds N]
                                 [--seed N] [--out-dir DIR] [--render]

With no --state, starts from a fresh boot and just mashes Start/A for a while
to get past the title/guild menus - works, but a real dungeon savestate (see
scratch/states/*.state) gets to the interesting part immediately.
"""
import argparse
import json
import random
import sys
import time
from pathlib import Path

from pyboy import PyBoy

sys.path.insert(0, str(Path(__file__).resolve().parent))
from tile_grid import (  # noqa: E402
    KNOWN_ITEM_TYPES,
    KNOWN_TERRAIN_IDS,
    read_viewport_grid,
)

PROJECT_ROOT = Path(__file__).resolve().parent.parent
DEFAULT_ROM = PROJECT_ROOT / "rom" / "Cave Noire (Japan).gb"
DEFAULT_OUT_DIR = PROJECT_ROOT / "scratch" / "states" / "autowalker"
SEEN_FILE_NAME = "seen.json"
LOG_FILE_NAME = "discoveries.jsonl"

INVENTORY_BASE = 0xC140
INVENTORY_SLOTS = 8

QUEST_TYPE_ADDR = 0xC101
QUEST_LEVEL_ADDR = 0xC102
STATE_C100_ADDR = 0xC100
STATE_C125_ADDR = 0xC125
FLOOR_ADDR = 0xC104

MONSTER_ARRAY_BASE = 0xC5C0
MONSTER_SLOT_SIZE = 0x10
MONSTER_SLOT_COUNT = 0x24

BONUS_FEATURE_BASE = 0xC271
BONUS_FEATURE_COUNT = 0xC271  # $c271 itself is the "how many rooms qualified" count

# Conservative "already understood" sets, kept in sync by hand with the wiki -
# see wiki/Dungeon-Mechanics.md and wiki/Player-Death-and-Game-Over.md. Anything
# outside these is worth a fresh look, even if it later turns out benign.
KNOWN_C100_STATES = set(range(0, 13))  # 0-12, see bank_000.asm $0af8 table + Door ($c100=12)
KNOWN_C125_STATES = {0, 1, 3, 4, 6, 7, 8, 9, 19, 21, 23}
KNOWN_MONSTER_TYPES = {0x01, 0x02, 0x03}  # Crab, boulder, Tarantula - everything else is unnamed

STUCK_TICKS_THRESHOLD = 180  # ~3s of game time with no position/room change
DOOR_LOOP_TICKS_THRESHOLD = 1200  # ~20s stuck in the door/results/dying state cluster


def load_seen(out_dir: Path) -> dict:
    path = out_dir / SEEN_FILE_NAME
    if path.is_file():
        with open(path) as f:
            data = json.load(f)
    else:
        data = {}
    # JSON can't have sets or tuple keys - normalize on load.
    for key in ("terrain_ids", "item_types", "monster_types", "c100_states", "c125_states"):
        data[key] = set(data.get(key, []))
    data["quest_combos"] = {tuple(x) for x in data.get("quest_combos", [])}
    data["bonus_feature_seen"] = data.get("bonus_feature_seen", False)
    return data


def save_seen(out_dir: Path, seen: dict) -> None:
    serializable = {
        "terrain_ids": sorted(seen["terrain_ids"]),
        "item_types": sorted(seen["item_types"]),
        "monster_types": sorted(seen["monster_types"]),
        "c100_states": sorted(seen["c100_states"]),
        "c125_states": sorted(seen["c125_states"]),
        "quest_combos": sorted(seen["quest_combos"]),
        "bonus_feature_seen": seen["bonus_feature_seen"],
    }
    with open(out_dir / SEEN_FILE_NAME, "w") as f:
        json.dump(serializable, f, indent=2)


def log_discovery(out_dir: Path, tick: int, category: str, detail: dict, state_path: Path) -> None:
    entry = {"tick": tick, "category": category, "state_file": state_path.name, **detail}
    with open(out_dir / LOG_FILE_NAME, "a") as f:
        f.write(json.dumps(entry) + "\n")
    print(f"[{tick:>8}] NEW {category}: {detail} -> {state_path.name}")


def dump_state(pyboy: PyBoy, out_dir: Path, category: str, tag: str, counter: list) -> Path:
    counter[0] += 1
    path = out_dir / f"{category}_{tag}_{counter[0]:04d}.state"
    with open(path, "wb") as f:
        pyboy.save_state(f)
    return path


def check_discoveries(pyboy: PyBoy, seen: dict, out_dir: Path, tick: int, counter: list) -> None:
    memory = pyboy.memory

    room, player_row, player_col, _, _, grid = read_viewport_grid(memory)

    for row in grid:
        for cell in row:
            if cell.is_item:
                item_type = cell.item_type
                if item_type not in KNOWN_ITEM_TYPES and item_type not in seen["item_types"]:
                    seen["item_types"].add(item_type)
                    path = dump_state(pyboy, out_dir, "item_type", f"{item_type:02x}", counter)
                    log_discovery(out_dir, tick, "item_type", {"item_type": hex(item_type), "room": room}, path)
            else:
                raw = cell.raw
                if raw not in KNOWN_TERRAIN_IDS and raw not in seen["terrain_ids"]:
                    seen["terrain_ids"].add(raw)
                    path = dump_state(pyboy, out_dir, "terrain_id", f"{raw:02x}", counter)
                    log_discovery(out_dir, tick, "terrain_id", {"raw": hex(raw), "room": room}, path)

    for i in range(INVENTORY_SLOTS):
        item_type = memory[INVENTORY_BASE + i]
        if item_type and item_type not in KNOWN_ITEM_TYPES and item_type not in seen["item_types"]:
            seen["item_types"].add(item_type)
            path = dump_state(pyboy, out_dir, "item_type", f"{item_type:02x}_inv", counter)
            log_discovery(out_dir, tick, "item_type", {"item_type": hex(item_type), "source": "inventory"}, path)

    quest_type = memory[QUEST_TYPE_ADDR]
    quest_level = memory[QUEST_LEVEL_ADDR]
    combo = (quest_type, quest_level)
    if combo not in seen["quest_combos"]:
        seen["quest_combos"].add(combo)
        interesting = quest_type in (3, 4)
        if interesting:
            path = dump_state(pyboy, out_dir, "quest_combo", f"q{quest_type}_l{quest_level}", counter)
            log_discovery(
                out_dir, tick, "quest_combo", {"quest_type": quest_type, "quest_level": quest_level}, path
            )

    for slot in range(MONSTER_SLOT_COUNT):
        base = MONSTER_ARRAY_BASE + slot * MONSTER_SLOT_SIZE
        cls = memory[base]
        if cls == 0:
            continue
        mtype = memory[base + 1]
        if mtype not in KNOWN_MONSTER_TYPES and mtype not in seen["monster_types"]:
            seen["monster_types"].add(mtype)
            path = dump_state(pyboy, out_dir, "monster_type", f"{mtype:02x}_cls{cls}", counter)
            log_discovery(out_dir, tick, "monster_type", {"monster_type": hex(mtype), "class": cls}, path)

    c100 = memory[STATE_C100_ADDR]
    if c100 not in KNOWN_C100_STATES and c100 not in seen["c100_states"]:
        seen["c100_states"].add(c100)
        path = dump_state(pyboy, out_dir, "c100_state", str(c100), counter)
        log_discovery(out_dir, tick, "c100_state", {"c100": c100}, path)

    c125 = memory[STATE_C125_ADDR]
    if c125 not in KNOWN_C125_STATES and c125 not in seen["c125_states"]:
        seen["c125_states"].add(c125)
        path = dump_state(pyboy, out_dir, "c125_state", str(c125), counter)
        log_discovery(out_dir, tick, "c125_state", {"c125": c125}, path)

    if not seen["bonus_feature_seen"] and memory[BONUS_FEATURE_COUNT] not in (0, 0xFF):
        seen["bonus_feature_seen"] = True
        path = dump_state(pyboy, out_dir, "bonus_feature", "c271", counter)
        detail = {
            "c271": memory[BONUS_FEATURE_COUNT],
            "c272_c27a": [memory[BONUS_FEATURE_BASE + i] for i in range(1, 10)],
        }
        log_discovery(out_dir, tick, "bonus_feature", detail, path)


DIRECTIONS = ["up", "down", "left", "right"]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--rom", default=str(DEFAULT_ROM))
    parser.add_argument("--state", default=None, help="Savestate to resume from (recommended)")
    parser.add_argument("--ticks", type=int, default=0, help="Stop after N emulated ticks (0 = unlimited)")
    parser.add_argument("--seconds", type=float, default=0, help="Stop after N wall-clock seconds (0 = unlimited)")
    parser.add_argument("--seed", type=int, default=None, help="Random seed for the movement policy")
    parser.add_argument("--out-dir", default=str(DEFAULT_OUT_DIR))
    parser.add_argument("--render", action="store_true", help="Open a visible window instead of running headless")
    args = parser.parse_args()

    rom_path = Path(args.rom)
    if not rom_path.is_file():
        print(f"ROM not found: {rom_path}")
        sys.exit(1)

    out_dir = Path(args.out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    rng = random.Random(args.seed)
    seen = load_seen(out_dir)
    counter = [0]

    pyboy = PyBoy(str(rom_path), window="SDL2" if args.render else "null", sound_emulated=False)
    if not args.render:
        pyboy.set_emulation_speed(0)  # uncapped

    if args.state:
        with open(args.state, "rb") as f:
            pyboy.load_state(f)
        print(f"Resumed from {args.state}")
    else:
        print("No --state given - starting from a fresh boot (will mash Start/A for a bit).")

    start_state_bytes = None
    import io

    buf = io.BytesIO()
    pyboy.save_state(buf)
    start_state_bytes = buf.getvalue()

    memory = pyboy.memory
    last_room_pos = None
    stuck_ticks = 0
    door_loop_ticks = 0

    tick = 0
    deadline = time.monotonic() + args.seconds if args.seconds else None
    current_action = None
    action_ticks_left = 0

    try:
        while True:
            if args.ticks and tick >= args.ticks:
                break
            if deadline and time.monotonic() >= deadline:
                break

            if action_ticks_left <= 0:
                roll = rng.random()
                if roll < 0.75:
                    current_action = rng.choice(DIRECTIONS)
                elif roll < 0.90:
                    current_action = "a"
                else:
                    current_action = "b"
                action_ticks_left = rng.randint(6, 14)
                pyboy.button(current_action, delay=min(4, action_ticks_left))

            pyboy.tick()
            tick += 1
            action_ticks_left -= 1

            if tick % 15 == 0:
                check_discoveries(pyboy, seen, out_dir, tick, counter)

                room = memory[0xC500]
                row = memory[0xC503]
                col = memory[0xC504]
                pos = (room, row, col)
                if pos == last_room_pos:
                    stuck_ticks += 15
                else:
                    stuck_ticks = 0
                    last_room_pos = pos

                if stuck_ticks >= STUCK_TICKS_THRESHOLD:
                    # Force a different direction next decision, and nudge with B in
                    # case a popup/menu is eating inputs.
                    pyboy.button("b")
                    action_ticks_left = 0
                    stuck_ticks = 0

                c100 = memory[STATE_C100_ADDR]
                if c100 in (11, 12):
                    door_loop_ticks += 15
                else:
                    door_loop_ticks = 0

                if door_loop_ticks >= DOOR_LOOP_TICKS_THRESHOLD:
                    print(f"[{tick:>8}] Stuck in door/game-over state cluster (c100={c100}) - reloading start state.")
                    pyboy.load_state(io.BytesIO(start_state_bytes))
                    door_loop_ticks = 0
                    stuck_ticks = 0
                    last_room_pos = None

    except KeyboardInterrupt:
        pass
    finally:
        save_seen(out_dir, seen)
        pyboy.stop()

    print(f"\nStopped after {tick} ticks. {counter[0]} new discoveries this run -> {out_dir}")


if __name__ == "__main__":
    main()
