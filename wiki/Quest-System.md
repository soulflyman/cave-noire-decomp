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

**Confirmed live** (via `tools/autowalker.py` savestates, quest types 3/4 reached by chance
during an unattended random-movement run): a Level-1 Orb quest's confirmation scroll reads
"クエスト3 レベル1 / オーブを 1つさがす。" ("Quest 3 Level 1. Search for 1 orb.") with
`$c16d` (the documented Orb target address) already holding `1` at that exact moment -
matching the ROM table's `$6e24` level-1 entry exactly. A Level-1 Fairy quest, captured
later and already deep into the dungeon (floor 3), showed the HUD reading "フェアリー 0/1"
with `$c170` (the documented Fairy target address) holding `1` - again matching the ROM
table. Both quest types' target-address mapping from the table above is therefore now
confirmed live, not just statically derived. The exact write-time code still wasn't pinned
down (see below and [Open Questions](Open-Questions)), but the *result* is now
cross-checked against real gameplay for every quest type.

**Not found:** the actual code that reads this header/table at quest-start time and writes
the resolved value into `$c16b` etc. — this likely involves an explicit ROM bank switch to
bank 2 that wasn't traced. The table itself was located by directly searching the ROM bytes
for the known StrategyWiki numbers, not by following the code path.

The ROM bank 2 region just before this table (`$6d19`-`$6e0f`-ish) disassembles as garbage
Z80 opcodes rather than clean data — the classic sign of raw bytes being mis-decoded, since
mgbdis has no way to know this is data. Two of the "jump" instructions inside that garbage
(`jr_002_6e0d`, `jr_002_6e39`) looked at first like they might be real, reachable code, since
they're referenced by `jr` instructions elsewhere in the file — but every single reference
to either label turned out to be *another* `jr` inside that same garbage byte range; nothing
outside it ever calls or jumps in. So both are confirmed pure disassembly artifacts, not real
code. The table values above are still documented by reading the ROM file directly rather
than converting the region to `db` statements in the source, since that's a bigger, separate
cleanup.

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
