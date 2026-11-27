# Monster System

## The monster array

Monsters live in a flat array at `$c5c0`-`$c800`: **16 bytes per entry, up to 36 slots**
(`$24 × $10`). Confirmed via the periodic animation-update loop (fires every 16 ticks) and
the slot-reset loop (`ld hl,$c5c0; ld b,$24; ld de,$0010`).

## Struct layout

| Offset | Meaning | Confidence |
|---|---|---|
| `$00` | **The "class" index** — doubles as "occupied" (`0` = empty slot) and as the direct index into the per-class stat table (see "The stat table, found" below). Not a species/type ID by itself; several different monster *types* can plausibly share one class entry if their base stats match. | **Confirmed** — see below |
| `$01` | Monster type ID | Confirmed (compared directly against `$c420`, the type currently being processed by the per-turn dispatch loop) |
| `$02` | Row (Y) position | Confirmed via OAM sprite position cross-check |
| `$03` | Column (X) position | Confirmed via OAM sprite position cross-check |
| `$04` | Blink/animation toggle — XOR'd with offset `$05` every 16 ticks, starts at whatever the class table says (usually `0`, but not always). **Not** a position or combat field (don't confuse with `$0f`, which has a similar 0/2-oscillation look but is the real direction/RNG field) | Confirmed |
| `$05`, `$07`, `$08` | Static per-class attributes, copied from the stat table at spawn - likely attack/defense/lucky-like stats, not yet told apart from each other | Confirmed to come from the stat table; individual meaning still open |
| `$06` | **Current HP.** Decreases with each hit taken; when it reaches 0, the entire slot is zeroed (including offset `$00`) | **Confirmed** — see below |
| `$09` | Copied from the stat table at spawn, **but not generally equal to `$06`/current HP** - see "The stat table, found" below. The old assumption that this is always "max HP, equal to starting HP" only happened to hold for the one Crab fight tested so far; most class records show a different value here. Possibly a different static stat (attack?) rather than max HP. | Revised — spawn-time source confirmed, semantic meaning still open |
| `$0f` | 2-3 bit direction/state field, doubles as the pseudo-RNG source — see [Combat System](Combat-System) | Confirmed |

## The stat table, found (pure static analysis)

Traced the full spawn path for a new monster slot:

1. `Call_001_4abe` (bank 1, `$4abe`) finds the first empty slot in the `$c5c0` array.
2. `Jump_001_4a7f` (bank 1, `$4a7f`) zeroes the whole 16-byte slot, then fills offsets
   `$00`-`$03` from staging variables `$c224`/`$c227`/`$c225`/`$c226` (class index/type
   ID/row/col).
3. `Call_000_1142_LoadMonsterClassStats` (bank 0, `$1142`) copies a **6-byte record** from
   a table at (bank 2) `$5ea2`, indexed by that same class value (`$c224`), into struct
   offsets `$04`-`$09` in one shot.

So offset `$00` isn't a separate "occupied flag plus mystery tag" at all — it's literally
**the index into this stat table**, and the table is what the whole monster-system
investigation had been missing. Decoded directly from ROM (class index -> `[$04, $05,
$06, $07, $08, $09]`):

```
class  0: [ 0,  0,  0,  8,  0,  2]      class  1: [ 0,  0,  0,  8,  0,  2]
class  2: [ 0,  2,  9,  5,  6,  4]      class  3: [ 0,  1,  6,  4,  4,  3]
class  4: [ 0,  1,  5,  4,  2,  3]      class  5: [ 0,  2,  8,  5,  2,  4]
class  6: [ 0,  2,  5,  4,  2,  5]      class  7: [ 0,  1,  6,  4,  4,  3]
class  8: [ 0,  1,  4,  3,  2,  3]      class  9: [16,  2, 18,  6,  6,  6]
class 10: [ 0,  1,  5,  4,  2,  3]      class 11: [ 8,  2, 18,  6,  6,  6]
class 12: [24,  1, 32,  9,  5, 16]      class 13: [ 8,  1, 19,  7,  5,  7]
class 14: [24,  2, 23,  7,  6,  7]      class 15: [24,  2, 32, 16,  5, 16]
class 16: [28,  2, 32, 16,  5, 16]      class 17: [28,  2, 23,  8,  6,  7]
class 18: [16,  1,  8,  6,  2,  5]      class 19: [ 0,  1,  7,  4,  2,  3]
class 20: [ 0,  2, 20,  7,  6,  7]      class 21: [ 0,  1,  5,  3,  2,  2]
class 22: [ 0,  1,  4,  3,  2,  1]      class 23: [ 0,  1,  1,  0,  1,153]
class 24: [ 5,  2,  1,  5,  1,153]      class 25: [ 6,  0,  7,  4,  2,  4]
class 26: [16,  2, 18,  5,  6,  4]      class 27: [24,  2, 24,  8,  6,  8]
class 28: [24,  2,  5, 12,  9,  2]      class 29: [ 0, 29, 10,  8, 17,  0]
class 30: [ 8, 17, 17, 18,  6,  5]      class 31: [25, 16, 13,  0,  0, 16]
```

Important: `$09` (the 6th value) is **not** generally equal to `$06` (3rd value, "current
HP") — e.g. class 3 is `[0, 1, 6, 4, 4, 3]`, HP 6 but `$09`=3. This directly contradicts
the old "offset `$09` = max HP, same as starting HP" assumption, confirming the doubts
raised earlier from live monster-array dumps. It only looked that way for the one
confirmed Crab fight. Whether `$09` is a different static stat (attack power is the
leading guess) or whether spawned values get scaled by dungeon depth before use (which
could reconcile things) is not confirmed either way.

This also puts the earlier "non-monster entries" conclusion in doubt: slots seen with
class values `18`/`19`/`22` (previously assumed to be room decorations reusing the
array, since no matching OAM sprite or movement was observed in those specific tests)
turn out to have completely ordinary-looking stat records in this table (e.g. class 19:
`[0,1,7,4,2,3]`, indistinguishable in shape from confirmed real monsters). They may well
be real monsters after all that simply weren't rendered/moving in that particular
capture window, rather than a separate "decoration" system - needs re-checking with a
longer live observation.

## How the HP field was confirmed

Two independent live fights against monster type `$01` (PyBoy, real HP, no cheats —
see below for why a naive invincibility hack doesn't work here):

```
gold_dungeon.state, type $01, pre-fight: offset $06 = 5, offset $09 = 5
  Hit 1 (player → monster): offset $06  5 → 3   (damage 2)
  Counter-hit (monster → player): wPlayerHP 0x10 → 0x08  (damage 2)
  Hit 2: offset $06  3 → 0, offset $00 (slot flag) 6 → 0  (monster defeated)

combat2.state, type $01, pre-fight: offset $06 = 5, offset $09 = 5
  Hit 1: offset $06  5 → 2   (damage 3)
  Counter-hit: wPlayerHP 0x10 → 0x06  (damage 4)
  Hit 2: offset $06  2 → 1   (damage 1)
  Counter-hit: wPlayerHP 0x06 → 0x04  (damage 2)
  Hit 3: offset $06  1 → 0, offset $00 6 → 0  (monster defeated)
```

**A pitfall worth documenting:** setting `wPlayerHP` to an artificially huge value
(`0x99`) for invincibility works fine for pure movement exploration, but once a combat
animation starts it triggers a glitch that continuously drains HP every tick (likely a
health-bar-fill animation that never reaches its target because the starting value is far
above `wPlayerMaxHP`). Combat tests need to use real, in-range HP values.

## Movement patterns

Monster type `$01` was observed moving **only horizontally** (column oscillates, row stays
fixed) across multiple independent test runs. Combined with its HP of 5, this matches the
StrategyWiki monster table exactly:

> **Crab**: HP 5, moves left and right

High confidence: **monster type `$01` = Crab**.

## More types identified (savestates from a second BDM play session)

- **Monster type `$03` = Tarantula.** HP `6` (offset `$06`), matching the StrategyWiki entry
  exactly. Movement, tracked over 40 player turns with no fighting: a large loop tracing
  almost the entire perimeter of the room, never settling - matches "moves counterclockwise
  around room" far better than Minotaur's small 4-square loop. Seen consistently across two
  independent savestates.
- **Monster type `$02` = stationary "boulder"-looking monster, not Minotaur.** HP `5`
  (offset `$06`), and confirmed to **never move**, even across 70+ player turns including
  several turns spent standing directly adjacent to it. This rules out Minotaur (which
  StrategyWiki documents as moving, just in a small loop). Both `5`-HP non-moving
  StrategyWiki entries are candidates - **Barokusu** or **Bukirika** - and the round,
  dark, "mole"/"boulder"-like look of the sprite leans towards one of those two rather
  than anything humanoid. Not yet disambiguated between the two.
- **Unresolved conflict - a second, distinct `$01`-type creature:** two further savestates
  each contained an entry with offset `$01` = `1` (same type byte as Crab) but a completely
  different stat block (`$06`=`8` HP instead of Crab's `5`, offset `$07`=`5` instead of `4`)
  and no horizontal-only movement observed. Either this is a stronger per-floor variant that
  still shares Crab's type ID, or offset `$01` doesn't cleanly mean "species" for every entry
  the way the single confirmed Crab test suggested. Needs a real combat test (HP-decrease
  tracking, same method used to confirm Crab) to resolve.
- **Multi-tile ("big") monsters exist and use more OAM sprites.** A two-tile-wide,
  visually two-headed monster (user-reported, matches a **Hydra** guess) was found rendered
  via 4 OAM sprite entries instead of the usual 2 for small monsters. Its monster-array entry
  had an unusual value at offset `$04` (`16`, vs. `0` on every small-monster entry seen so
  far) - multi-tile monsters likely use a modified/extended struct layout that hasn't been
  mapped yet. HP field didn't cleanly match any StrategyWiki entry, so the species guess
  is unconfirmed.
- **Non-monster entries in the same array, confirmed again:** several slots had wildly
  different offset `$00` values (`19`, `22`) with no matching OAM sprite and zero movement
  under any condition - these are not monsters at all, just other room objects reusing the
  same 16-byte array slots. Purpose not identified.

## What's still open

- **Mapping class index -> StrategyWiki species name.** The class table is found, but
  class index isn't the same thing as the `$01` type ID (type `$01`=Crab presumably uses
  one specific class, but which one isn't confirmed - the live Crab fight data doesn't
  cleanly match any single class record above, see "The stat table, found"). Needs either
  a live read of `$c224` right at spawn time for a known species, or a separate table
  mapping type ID -> class index that hasn't been located yet.
- **What offset `$09` actually is**, given it's confirmed to not just duplicate current
  HP - needs a live combat test on a monster whose class record has `$09` clearly
  different from `$06`, to see if it's attack power, defense, or something else.
- Whether `$02` (the stationary "boulder" monster) = Barokusu or Bukirika (both HP 5,
  both non-moving) — need a clearer sprite reference or a savestate with both present.
- The `$01`-type HP-8 variant vs. the confirmed HP-5 Crab — needs a live combat test.
- The big/multi-tile monster struct layout (4-OAM creatures) — needs tracing from scratch,
  probably a different code path than the small-monster one documented above.
- Re-check whether class values `18`/`19`/`22` really are non-monster decorations or just
  ordinary monsters that weren't observed moving/weren't visible in those specific tests
  (see "The stat table, found").

See [Open Questions](Open-Questions) for what kind of savestate would help close these gaps.
