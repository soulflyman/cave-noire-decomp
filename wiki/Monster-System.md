# Monster System

## The monster array

Monsters live in a flat array at `$c5c0`-`$c800`: **16 bytes per entry, up to 36 slots**
(`$24 × $10`). Confirmed via the periodic animation-update loop (fires every 16 ticks) and
the slot-reset loop (`ld hl,$c5c0; ld b,$24; ld de,$0010`).

## Struct layout

| Offset | Meaning | Confidence |
|---|---|---|
| `$00` | **Not** a simple occupied flag as first thought — `0` still means empty slot, but live non-zero values vary by entry: `6` for the Crab combat test, `4`/`3` for two more real monsters (see below), and `19` for three further slots that turned out to *not* be monsters at all (see "Non-monster entries" below). Looks more like a per-entry object/behavior-class tag. | Revised — "occupied" still holds for zero/non-zero, exact nonzero meaning open |
| `$01` | Monster type ID | Confirmed (compared directly against `$c420`, the type currently being processed by the per-turn dispatch loop) |
| `$02` | Row (Y) position | Confirmed via OAM sprite position cross-check |
| `$03` | Column (X) position | Confirmed via OAM sprite position cross-check |
| `$04` | Blink/animation toggle — XOR'd with offset `$05` every 16 ticks. **Not** a position or combat field (don't confuse with `$0f`, which has a similar 0/2-oscillation look but is the real direction/RNG field) | Confirmed |
| `$05`, `$07`, `$08` | Static per-type attributes (values `2`, `4`, `2` for Crab; `1`, `4`, `2` for both newer types below) — likely attack/defense/lucky-like stats | Open — `$05`/`$08` vary by type, `$07`=`4` constant so far |
| `$06` | **Current HP.** Decreases with each hit taken; when it reaches 0, the entire slot is zeroed (including offset `$00`) | **Confirmed** — see below |
| `$09` | **Not confirmed as max HP after all.** Was `3` for both newly-identified types below while their current HP (`$06`) read `5` and `6` respectively - current HP can't exceed a lower max. It only *looked* like max HP for Crab because that test happened to be read on an undamaged monster where both fields coincidentally matched; `$09` is more likely a different static stat (attack power?) that's unrelated to HP. | Revised — open again |
| `$0f` | 2-3 bit direction/state field, doubles as the pseudo-RNG source — see [Combat System](Combat-System) | Confirmed |

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

- The ROM table that populates offsets `$05`/`$07`/`$08`/`$09` from the monster type at spawn
  time hasn't been located — needed to map the remaining ~20 StrategyWiki monster types to
  their internal type IDs. (One dead-end worth noting: `Call_001_518a` looked promising but
  actually indexes by current dungeon level, `$c102`, not monster type — it's unrelated.)
- Offset `$00`'s meaning is still open - confirmed to vary a lot (`6`, `4`, `3`, `5`, `7`,
  `18`, plus `19`/`22` for non-monster entries) with no clear pattern spotted yet.
- Whether `$02`=Barokusu or Bukirika (both HP 5, both non-moving) — need a clearer sprite
  reference or a savestate where the other one is also present for comparison.
- The `$01`-type HP-8 variant vs. the confirmed HP-5 Crab — needs a live combat test.
- The big/multi-tile monster struct layout (4-OAM creatures) — needs tracing from scratch,
  probably a different code path than the small-monster one documented above.

See [Open Questions](Open-Questions) for what kind of savestate would help close these gaps.
