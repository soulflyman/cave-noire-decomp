# Quest System

## Quest types

The quest/level select screen isn't a simple number counter — it's a cursor over 4 map
icons. `$c101` holds the selected quest type:

| `$c101` | Quest type |
|---|---|
| 1 | Monster (kill N monsters) |
| 2 | Gold (collect N gold) |
| 3 | Orb |
| 4 | Fairy |

`$c102` holds the selected level (1-based index into several per-level tables — see below).

## Objective progress tracking

| Quest type | Progress address | Target address |
|---|---|---|
| 1 (Monster) | `$c16a` | `$c16b` |
| 2 (Gold) | `$c128` | `$c16e` |
| 3 (Orb) | `$c16c` | `$c16d` |
| 4 (Fairy) | `$c16f` | `$c170` |

Found via the HUD-drawing routines (`Call_000_2b5d_DrawObjectiveTargetTiles` and
`Call_000_2b72_DrawObjectiveProgressTiles`, bank 0), which look up the right pair of
addresses from a table at `$2b8f`/`$2b97` indexed by `$c101`.

## Per-level target values (ROM bank 2)

The actual numeric targets per level live in ROM bank 2, CPU address `$6e10`-`$6e37`
(file offset `$ae10`-`$ae37`), one 10-byte BCD table per quest type (levels 1-9 + "M"):

```
$6e10 (Monster): 03 04 05 07 10 12 15 18 20 25   → 3,4,5,7,10,12,15,18,20,25
$6e1a (Gold):    02 04 06 09 15 25 38 55 79 99   → 2,4,6,9,15,25,38,55,79,99
$6e24 (Orb):     01 02 03 04 05 06 06 06 07 08   → 1,2,3,4,5,6,6,6,7,8
$6e2e (Fairy):   01 02 03 04 05 06 07 08 09 09   → 1,2,3,4,5,6,7,8,9,9
```

These match the StrategyWiki walkthrough table exactly. A 16-byte header right before this
data (`$6e00`-`$6e0f`) links each quest type to its `[WRAM target address, table pointer]`
pair.

**Not found:** the actual code that reads this header/table at quest-start time and writes
the resolved value into `$c16b` etc. — this likely involves an explicit ROM bank switch to
bank 2 that wasn't traced. The table itself was located by directly searching the ROM bytes
for the known StrategyWiki numbers, not by following the code path.

A deliberate choice was made **not** to convert this ROM bank 2 region into clean `db`
statements in the source: two labels (`jr_002_6e0d`, `jr_002_6e39`) that are referenced by
real jump instructions elsewhere in that file land inside this byte range, and it wasn't
possible to safely rule out that they're real, reachable code rather than disassembly
artifacts. The table values are documented here instead, read directly from the ROM file.

## Base per-level player stats

Separately from quest targets, `Call_000_31ad_InitPlayerStatsFromLevel` (bank 0, `$31ad`)
initializes HP/Attack/Defense/Lucky from a table (`BaseStatsByLevel`, bank 0, `$31cc`):

| Level | HP | Attack | Defense | Lucky |
|---|---|---|---|---|
| 1–3 | 10 | 4 | 4 | 4 |
| 4–6 | 11 | 4 | 4 | 5 |
| 7–9 | 12 | 4 | 4 | 6 |
| M | 13 | 5 | 6 | 7 |

Matches the StrategyWiki stats table exactly. A notable implementation quirk: the pointer
loaded for this table is `BaseStatsByLevel - 4`, not the table's real start — because the
level index (`$c102`) is 1-based, "row 0" would otherwise be unused; pointing 4 bytes
early means row 0 harmlessly overlaps the tail end of the init function's own code
(`call $5d07; ret`), which is never actually read since the level index is never 0. A small
space-saving trick, not a bug.

## Floor depth

`wCurrentFloor` (`$c104`) tracks the current dungeon floor. Confirmed via
`Call_000_0ec9_DrawFloorNumberTile`, which draws the floor digit to the HUD and fires
exactly at floor transitions. Going down a floor requires standing on the stairs tile and
pressing **A** — simply walking onto it does nothing (this is why early exploration
attempts that just walked around never found a floor transition).
