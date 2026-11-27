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

- The `$d500`-array/`jr_000_36e0` mechanism (tile class `$0a`, found via the same
  `Call_000_2ef1` tile resolver used everywhere else) does **not** block movement - you can
  walk right onto this kind of tile.
- Pressing **A** while standing on it calls `jr_000_36e0`. For "normal" item type IDs, this
  adds the item straight to the inventory in one step (compacts the inventory, finds a free
  slot, copies the item byte, clears the tile) - no separate ground-drop phase.
- For item type IDs `$10`/`$11` specifically, it instead branches to `jr_000_371a` →
  `Call_001_50df_RollGoldAmount`, which rolls an amount into `$c515` (scaled by current
  floor for `$10`, by Lucky for anything else landing here) and then
  `Jump_000_351a_EnterGoldPickupPopup` → `Jump_001_5003_ShowGoldPickup` opens a popup window
  and adds that amount straight to `$c128` (`wGoldCollected`) - i.e. **`$10`/`$11` are loose
  gold piles lying on the floor**, not inventory items. Confirmed dynamically: `$c128` went
  from 0 to 1 right after the A press, matching the rolled `$c515` value. (An earlier version
  of this page mis-read `$c515` as a generic trap timer - it's the gold amount here.)

So the `$d500` overlay mechanism, at least for the tile types tested, is a single-A-press
interaction (either "add to inventory" or "add to gold"), not the two-phase open-then-collect
flow described from live play. The real two-phase chest (visually distinct, closed sprite;
opening drops an item that needs a *separate* walk+A to collect) has not been located yet -
it may be a different object entirely (e.g. an actual sprite rather than this
background-tile overlay), or only certain non-gold item types exhibit it. Needs a savestate
standing right in front of a still-closed, visually distinct chest to test properly.

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

Tile class `$0b` leads into code that reads an address pair, `$c427`/`$c428` — the "partner
position" of a warp tile. It compares the player's current position against both, and
teleports to whichever one *isn't* the current position (via a word-table lookup at
`$206b`, producing new coordinates in `$c50b`/`$c50c`). This is a strong, structurally
sound hypothesis but hasn't been triggered in an actual test yet.

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
defeating a Flame Eye) removes it. A reference screenshot (floor B4F) confirms this exactly:
a dense dither pattern covers most of the room, with a monster visible only as a white
eye-pair sprite.

**Not found.** This mechanic only appears on deeper floors than any available savestate
reaches. A VRAM tile dump of all 384 background tiles loaded in a floor-1 savestate turned
up no dither-pattern tile and no eye sprite — consistent with the mechanic simply not being
loaded that early, not a dead end in the search method itself. Two candidate next steps:

1. Navigate deep enough into a real quest to capture a savestate from a dark floor, then
   repeat the VRAM tile dump.
2. Keep tracing statically: find the "draw room from dungeon layout" function (not yet
   located) and look for a per-tile distance-from-player check gating whether it draws the
   real tile or a dark placeholder.

## Not located at all

- **Lava** — "lose all HP if you fall in" per the wiki. No tile class identified yet.
- **Door** (dungeon exit) — no tile class identified yet.
- **Fairy Cage** — unlockable with a key item, not investigated.

See [Open Questions](Open-Questions) for the full savestate wishlist.
