# Monster System

## The monster array

Monsters live in a flat array at `$c5c0`-`$c800`: **16 bytes per entry, up to 36 slots**
(`$24 × $10`). Confirmed via the periodic animation-update loop (fires every 16 ticks) and
the slot-reset loop (`ld hl,$c5c0; ld b,$24; ld de,$0010`).

## Struct layout

| Offset | Meaning | Confidence |
|---|---|---|
| `$00` | Slot-occupied flag. `0` = empty slot (processing stops immediately). Always seen as `6` for a living monster in every test so far — possibly a type/category tag rather than a plain boolean, not yet distinguished since only one monster type has been tested in combat. | Confirmed (empty vs. occupied); exact meaning of the nonzero value open |
| `$01` | Monster type ID | Confirmed (compared directly against `$c420`, the type currently being processed by the per-turn dispatch loop) |
| `$02` | Row (Y) position | Confirmed via OAM sprite position cross-check |
| `$03` | Column (X) position | Confirmed via OAM sprite position cross-check |
| `$04` | Blink/animation toggle — XOR'd with offset `$05` every 16 ticks. **Not** a position or combat field (don't confuse with `$0f`, which has a similar 0/2-oscillation look but is the real direction/RNG field) | Confirmed |
| `$05`, `$07`, `$08` | Static per-type attributes (values `2`, `4`, `2` for the one type tested so far — likely attack/defense/lucky-like stats, not individually assigned yet) | Open — needs a second monster type to disambiguate |
| `$06` | **Current HP.** Decreases with each hit taken; when it reaches 0, the entire slot is zeroed (including offset `$00`) | **Confirmed** — see below |
| `$09` | Base/max HP for the type. Identical to `$06` on an undamaged monster, stays constant through combat | **Confirmed** |
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

## What's still open

- The ROM table that populates offsets `$05`/`$07`/`$08`/`$09` from the monster type at spawn
  time hasn't been located — needed to map the remaining 22 StrategyWiki monster types to
  their internal type IDs. (One dead-end worth noting: `Call_001_518a` looked promising but
  actually indexes by current dungeon level, `$c102`, not monster type — it's unrelated.)
- Whether offset `$00`'s value of `6` means anything beyond "occupied" is unconfirmed.

See [Open Questions](Open-Questions) for what kind of savestate would help close these gaps.
