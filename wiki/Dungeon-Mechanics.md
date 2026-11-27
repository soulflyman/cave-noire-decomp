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

Confirmed via live play (Beaten Dying Moon emulator): picking up an item from a chest is a
three-step interaction, structurally identical to the attack-targeting flow in
[Combat System](Combat-System):

1. Walk up adjacent to the chest tile.
2. Press the direction toward it again to select it (same blinking-corner selection as
   targeting a monster).
3. Press **A** to open it. The contained item drops onto the chest's tile (it does not go
   straight into the inventory).
4. Walk onto that tile, then press **A** again to actually pick the dropped item up into the
   inventory.

So a chest requires two separate A presses (open, then pick up) with a move in between, not
a single walk-and-grab.

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
