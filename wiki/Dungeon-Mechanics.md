# Dungeon Mechanics

## The tile-class dispatcher

After every player move, `Call_000_2ef1` (bank 0) resolves the tile ahead into a "tile
class" (`$c241 and $7f`), and a dispatcher in the movement-execution code (around `$3698`,
bank 0) sets the main state machine (`$c126`) based on it:

| Tile class | Result | Mechanic | Confidence |
|---|---|---|---|
| `$08` | Calls `$5d40` (quest-type table), then transitions state | **Stairs** | Confirmed (reuses the already-verified floor-depth routine) |
| `$0a` | Jumps into the item-pickup code | **Item/chest pickup** | Confirmed (see [Item System](Item-System) and chest flow below) |
| `$0b` | Calls `$408a` | **Warp** (see below) | Plausible, not dynamically tested |
| `$07` | Sets state `3` | Unidentified | Open |
| anything else | Sets state `4` | Normal walkable floor | — |

## Chest/item pickup flow

Live play (Beaten Dying Moon emulator) described a three-step interaction for chests (walk
adjacent, press direction again to select - shown as blinking corner markers -, A to open,
then walk onto the dropped item and press A again to collect it), structurally similar to
the attack-targeting flow in [Combat System](Combat-System). Tracing one specific instance
in the disassembly, confirmed with PyBoy (see [Building the ROM](Building-the-ROM) for the
method, [Open Questions](Open-Questions) for what's still unresolved), told a more nuanced
story:

The `$d500` array doubles as both "chest/item overlay" and the bit that actually
distinguishes an unopened chest from an exposed item - and that bit's meaning was initially
misread backwards before a real closed-chest savestate (two Orb tiles, not gold/traps,
provided by the user) made it possible to confirm it properly:

- **Bit 7 set** on a `$d500` cell = a **still-closed chest** at that position. Walking
  adjacent to it and then pressing the direction again (same blinking-corner target
  selection as picking a monster in combat, `$c125` state `6`,
  `Call_000_3c4f_TrySelectDirection` / `Call_000_35ef_CheckClosedChestAhead`) selects it as
  the target. Pressing **A** then runs `Jump_001_4f3d_OpenChestRevealItem`, which clears
  bit 7 on the cell (e.g. `$87` → `$07`) and redraws the tile graphic - **this does not add
  anything to the inventory**, it only reveals the item lying on the tile.
- **Bit 7 clear** = an item now lying exposed and walkable (tile class `$0a`). This tile
  does *not* block movement - you can walk right onto it. Pressing **A** while standing on
  it calls `jr_000_36e0`, which for "normal" item type IDs adds the item straight to the
  inventory (compacts the inventory, finds a free slot, copies the item byte, clears the
  cell). For item type IDs `$10`/`$11` specifically, it instead branches to `jr_000_371a` →
  `Call_001_50df_RollGoldAmount` (rolls an amount into `$c515`, scaled by current floor for
  `$10`, by Lucky otherwise) → `Jump_000_351a_EnterGoldPickupPopup` →
  `Jump_001_5003_ShowGoldPickup`, which opens a popup window and adds that amount straight
  to `$c128` (`wGoldCollected`) instead of the inventory - i.e. **`$10`/`$11` are loose gold
  piles that skip the "closed chest" state entirely** and are found already exposed.

Confirmed dynamically end-to-end on a real chest: before interacting, `$d500` cell = `$87`
(item type `7` = Orb, bit 7 set). After selecting + opening (one A press), cell = `$07`,
inventory unchanged. After walking onto the tile and pressing A again, the item lands in a
free inventory slot and the cell clears to `0`. This exactly matches the two-phase
open-then-collect flow described from live play - the earlier conclusion on this page (that
`$d500`/`jr_000_36e0` was a single-A-press mechanism with no two-phase chest) only held for
the gold-pile item types, which really do skip the closed-chest step.

### No real "dungeon seed" exists, but the RNG state is directly reproducible

While investigating this, it turned out the game has no dedicated "dungeon generation seed"
value a player could note down. All randomness flows through one 16-bit LCG state
(`$c011`/`$c012`, see [Combat System](Combat-System) for the formula) that is **never**
explicitly seeded with real entropy anywhere in the ROM (no boot-time write found in any
bank) - its drift comes entirely from how many times it's been called by the time you enter
a dungeon, which in practice means "how the player navigated the menus."

The useful consequence: since it's just two bytes, poking `$c011`/`$c012` directly in PyBoy
before entering a dungeon reproduces a run deterministically, without needing a real
player-captured savestate. Tested by forcing a Gold quest (`$c101=2`) on top of an existing
item-loadout savestate and sweeping many seed values: every seed produced an item at the
same `$d500` offset, with only the spawn position varying - suggesting level 1 has a single
fixed room template for this quest type (item placement fixed, only spawn point randomized),
though this hasn't been checked across other quest/level combinations.

## Warp

Tile class `$0b` leads into `Call_001_408a_WarpToOtherRoom`, which reads an address pair,
`$c427`/`$c428` — the two *room-index* endpoints of a warp pair (`$c500` is the current room
index within the floor, a separate concept from `$c503`/`$c504`, the in-room tile
row/column). It compares the current room index against `$c427`, and picks `$c428` as the
destination if they match, `$c427` otherwise ("teleport to whichever end isn't the current
one") - resolving that destination room via a word-table lookup at `$206b` and staging new
in-room coordinates into `$c50b`/`$c50c`. `Jump_001_40de_FinalizeWarp` then actually commits
the staged room index + coordinates into `$c500`-`$c504` and redraws the view.

**Confirmed live** on a real warp tile (stand on it, press A - exactly as described from
play): `$c427`/`$c428` were `(1, 2)`; starting in room `1`, the code picked room `2`, and
the player's position jumped instantly from `(5,7)` to `(1,2)`, landing in a visually
distinct, separately-dark room with its own warp tile - while the floor number (`$c104`)
stayed the same throughout. Matches the description exactly: warps always stay on the same
floor but move between rooms.

## Floor warning icons

The StrategyWiki describes three floor-hazard indicators that appear above the player:

> "!!" above the character — the ground is cracking and will break next turn
> "?" above the character next to a wall — that wall (or a nearby one) can be broken
> a jumping-person icon facing a hole — you can jump across without falling

Three structurally similar routines were found that match this description closely:

| Routine | Trigger | Icon tile | Hypothesis |
|---|---|---|---|
| `Call_000_2f3f` → `Jump_000_3323` | Random check (`Call_000_3e08`) + tile ID match (`$1d`/`$23`) | `$5a` | "!!" floor crack warning |
| `Call_000_2f48` → `Jump_000_3327` | Random check + tile ID match (`$09`), scanned across all 4 directions | `$42` | "?" secret wall warning |
| `Call_000_3772` → `Jump_000_332b` | Deterministic tile check (`== $0f`), no randomness | `$56` | Hole-jump icon |

All three converge on shared drawing code (`jr_000_332d`) that writes a small 2-tile sprite
to the OAM shadow buffer above the player. The mapping (random-vs-deterministic trigger,
3 distinct icon tiles matching 3 distinct wiki warnings) is a strong static hypothesis, but
a scripted 60-step walk-back-and-forth test in a sample dungeon room didn't trigger any of
them — likely because that particular room/tiles don't qualify, or the random odds are too
low for that short a sample. Needs a savestate standing on/next to a qualifying tile.

Two more structurally identical "scan all 4 directions for a matching tile ID" routines
exist in the item-effect code (`Call_000_2f48` used from `$53a2`, `Call_000_2f4c` used from
`$572c`) — plausibly the "Ganseki" (fill hole/rock barrier) and "Oriru" (place stairs on
adjacent tile) item effects, which both need to find a qualifying adjacent tile. Not
individually confirmed.

## Darkness / torch visibility

The StrategyWiki describes rooms where darkness covers the floor beyond 1-2 tiles of the
player, monsters show only as a pair of eyes until approached, and the `Akari` item (or
defeating a Flame Eye) removes it.

**Confirmed**, using a real savestate from floor B4F (deep enough to have darkness active,
provided by the user via `tools/play_and_save.py`):

- `pyboy.screen.image` renders the scene correctly (unlike the single-tile `Tile.image()`
  API, which still returns solid black - a PyBoy quirk noted earlier in this project). The
  screenshot matches the StrategyWiki description and the earlier reference screenshot
  exactly: a dense dither pattern covers almost the entire visible area, with only a small
  patch of real room art around the player, and the monster rendered as a plain white
  eye-pair sprite (OAM tile `140`, two sprites placed side by side).
- The dark placeholder tile's raw VRAM value is `$5f` (95) - read directly from the
  `$9800`-based background tilemap (LCDC bit 4 set, so `$8000` addressing applies directly).
- **It's a real, dynamic fog-of-war, not static room art.** Before moving one step, two
  tilemap rows at the edge of the revealed patch were solid `$5f`. After a single `down`
  press (one tile of movement), those exact two rows were overwritten with real floor/wall
  tile IDs, while the previously-revealed area stayed visible and unchanged - i.e. revealed
  tiles are remembered, not just shown within a fixed radius of the player's current
  position.

**Still open:** the exact routine that performs this per-move "reveal nearby tiles" redraw
hasn't been located yet - a search for `$5f` used as an immediate comparison constant in
banks 0/1 came up empty, suggesting the redraw doesn't check "is this tile still dark" but
unconditionally redraws a small area around the new position every move (in both dark and
normal rooms alike), with the darkness-specific part only being that affected rooms
pre-fill their unexplored tiles with `$5f` at load time rather than the real tile.

**The `Akari` item, live-tested** (item type `$0d`, item-screen name アカリ confirmed) despite
the savestate's critically low HP (3/10) - risk accepted and nothing went wrong: using it
from the item screen clears its inventory slot (consumed, one-shot) and immediately reveals
a large chunk of the dark tilemap in one go (dark `$5f` tile count dropped from 204 to 136
in a single use) - a "light up more of this room now" burst, not a lasting radius buff.
Screenshots before/after confirm a visibly much larger room revealed. Interestingly, the
monster that was in the newly-lit area was **still** rendered only as the eye-pair sprite
afterwards - so the "reveal nearby tiles" system (room geometry) and the "reveal a monster's
real sprite" system are independent; Akari only affects the former.

## Dungeon exit ("Door")

Confirmed live on a savestate standing next to the exit tile (visually a distinct icon,
quest already at 3/3 monsters killed): walking adjacent to it and pressing **A** sets the
main game-state dispatcher (`$c100`) to `12`, entered via the handler at bank 0 `$0bd4`
(not yet named - reached through the top-level `$c100` state machine, a separate, larger
dispatch table from the `$c125`/`$c126` ones already mapped for movement/combat/chests).
This plays a palette-fade transition, then a scrolling "running down a corridor" animation,
and finally a results screen:

> コナミ タロウ は、3 ひきモンスターをたおしました。おめでとう!!
> ("Konami Tarou defeated 3 monsters. Congratulations!!")

followed by a looping list of the individual kills, each showing a monster icon, a running
kill index, its name, and a weight/height stat line, e.g. `1 ミノタウルス 180kg 2.7m`
(Minotaurus) and `2 タランチュラ 94kg 2.4m` (Tarantula) - the same named monster can show
slightly different weight/height between individual kills (`180kg/2.7m` vs `184kg/2.9m` for
two different Minotaurus kills), suggesting each monster instance gets small randomized
"flavor" stats independent of its combat stats. This is a promising lead for identifying
monster type IDs by name in the future, but wasn't cross-referenced against the struct data
in this session.

The screen loops this list indefinitely - across a 3000-tick (~50 second) idle run and
several button combinations (A, B, Start, Select, held A), nothing dismissed it back to the
guild menu, so the exact "continue" input (or whether it's timed and our sampling just
missed a narrow window) is still unconfirmed.

The exact tile class/trigger condition for *approaching* the exit (as opposed to the `$c100`
state transition once A is pressed) wasn't isolated - the resolved tile class read as a
plain `$80`-with-bit-7-set value indistinguishable from an ordinary wall in this test,
suggesting the exit may be a hardcoded coordinate check rather than a tile-class entry like
stairs/chests/warps.

## Not located at all

- **Lava** — "lose all HP if you fall in" per the wiki. No tile class identified yet.
- **Fairy Cage** — unlockable with a key item, not investigated.

See [Open Questions](Open-Questions) for the full savestate wishlist.
