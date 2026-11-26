# Statistics: how much have we identified?

Honest caveat first: there's no single "% reverse engineered" number for a project like
this. The numbers below are approximate, gathered with simple text-search heuristics over
the disassembly, and meant to give a rough sense of scale — not a precise score. Where it
matters, the methodology is stated so it's reproducible.

## The ROM at a glance

| | |
|---|---|
| Total size | 128 KB (8 ROM banks × 16 KB) |
| Mechanically disassembled | 100% (mgbdis produces a complete, rebuildable disassembly of every byte) |
| Bit-identical rebuild | Yes, verified after every change (MD5 `10d92861e262069ce31559e12b927aa0`) |
| Banks that are mostly game logic | Bank 0 (fixed, `$0000`-`$3FFF`) and Bank 1 (`$4000`-`$7FFF`) |
| Banks that are mostly data/graphics | Banks 2–7 (96 KB total) — tile graphics, dungeon layouts, text, lookup tables |

A complete mechanical disassembly is the easy part (mgbdis does it automatically and it's
already bit-perfect). The actual work is figuring out what each routine and RAM address
*means* — that's what the numbers below try to capture.

## Code banks (0 and 1): named routines

mgbdis auto-generates a label for every call/jump target (`Call_000_31ad`,
`Jump_001_4f5e`, ...). We rename a routine once we understand what it does
(`Call_000_31ad_InitPlayerStatsFromLevel`). Counting labels with a descriptive suffix vs.
total labels:

| Bank | Total call/jump labels | Descriptively renamed | Share |
|---|---|---|---|
| Bank 0 | 537 | 13 | ~2.4% |
| Bank 1 | 285 | 8 | ~2.8% |
| **Total** | **822** | **21** | **~2.6%** |

This undersells actual progress quite a bit: most of those 822 labels are small leaf
helpers (BCD math, generic table lookups, sprite/OAM plumbing) that don't need individual
names to understand the mechanic they're part of — we only rename the ones worth
remembering. The real signal is the system-level list further down.

## RAM map coverage

Distinct `$cXXX` WRAM addresses referenced by the two code banks vs. how many have a
documented purpose (either as a named constant in the source, or explained in `NOTES.md`):

| | |
|---|---|
| Distinct WRAM addresses referenced in bank 0+1 | 337 |
| Addresses with a documented purpose | 62 (~18%) |
| Addresses promoted to a named constant in the source (`DEF wXxx EQU ...`) | 8 |

See [RAM Map](RAM-Map) for the full table.

## Data banks (2–7): essentially unexplored

Of the 96 KB across banks 2–7, we have pinpointed and verified the exact location of:

- The per-level base-stats table (`BaseStatsByLevel`, 40 bytes, bank 0 actually — the only
  data table so far that lives in a code bank)
- The per-level quest-objective target tables for all 4 quest types, plus a 16-byte header
  (bank 2, ~72 bytes total)
- The sword/shield attack/defense bonus tables (bank 1, 8 bytes)

That's roughly **120 bytes** of confirmed, labeled data out of 96 KB of data banks — under
0.2%. The dungeon layouts, monster stat tables, tile graphics, and text are all still
unmapped. This is the biggest open area of the project.

## Game systems: current understanding

| System | Status |
|---|---|
| Boot → menu → dungeon entry flow | ✅ Fully mapped |
| Player HP/stats display and storage | ✅ Confirmed |
| "RNG" / monster movement timing mechanism | ✅ Confirmed (there is no dedicated RNG function — see [Combat System](Combat-System)) |
| Combat damage formula (both directions) | ✅ Confirmed |
| Hit/miss chance | ✅ Confirmed there isn't one — every attack lands |
| Lucky stat | ✅ Confirmed (healing bonus + item-effect RNG range, not combat accuracy) |
| Floor depth tracking | ✅ Confirmed |
| Quest objective tracking (all 4 quest types) | ✅ Confirmed |
| Base per-level stats table | ✅ Confirmed |
| Player death / Game Over trigger | ✅ Confirmed (2 of 3 call sites; 3rd site's gating condition not fully traced) |
| Monster struct layout (position, HP field) | ✅ Confirmed |
| Monster type → stats table (23 types in the wiki) | 🟡 1 of 23 types identified (type `$01` = Crab) |
| Inventory system (8 slots, helper routines) | ✅ Confirmed |
| Item type IDs (~25 items in the wiki) | 🟡 7 of ~25 identified |
| Dungeon tile-class dispatcher (stairs, pickup, warp) | ✅ Confirmed (stairs/pickup), 🟡 plausible (warp, not dynamically tested) |
| Floor warning icons ("!!" crack, "?" secret wall, hole-jump) | 🟡 Plausible from code structure, not dynamically confirmed |
| Lava, door, fairy cage | ❌ Not located |
| Darkness / torch visibility mechanic | ❌ Not located |
| Code/data separation (CDL) | ❌ Deliberately deferred — no CDL tooling available for mgbdis |

Legend: ✅ confirmed · 🟡 partial/plausible · ❌ not started or not found.

See [Open Questions](Open-Questions) for exactly what savestate each 🟡/❌ item needs to move
forward.
