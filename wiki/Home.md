# Cave Noire Decompilation Wiki

This wiki documents the ongoing reverse-engineering of **Cave Noire** (Konami, 1991,
Game Boy), based on a full [mgbdis](https://github.com/mattcurrie/mgbdis) disassembly that
rebuilds bit-identically to the original ROM (MD5 `10d92861e262069ce31559e12b927aa0`).

The goal isn't just a byte-identical disassembly (mgbdis already gets us that for free) —
it's understanding *what the code does*: giving routines and RAM addresses real names,
and documenting the game's mechanics well enough that someone could reimplement or mod the
game from these notes alone.

**Methodology:** findings come from two complementary approaches:
- **Static analysis** — reading the disassembly, cross-referencing call sites, matching
  constants against values the [StrategyWiki Cave Noire pages](https://strategywiki.org/wiki/Cave_Noire)
  already document (base stats, quest targets, item/monster lists).
- **Dynamic verification** — [PyBoy](https://github.com/Baekalfen/PyBoy) headless emulation:
  memory watchpoints, savestate comparisons, and scripted input to actually trigger a
  mechanic and watch RAM change in real time.

Every finding below is labeled with how confident we are — "confirmed" means it was
dynamically verified, "plausible" means it's a strong static-analysis hypothesis that still
needs a savestate to nail down. See [Open Questions](Open-Questions) for the full list of
things that need a specific savestate to confirm.

## Pages

- **[Statistics](Statistics)** — how much of the game we've actually identified so far
- **[RAM Map](RAM-Map)** — known WRAM addresses and their purpose
- **[Controls and Menus](Controls-and-Menus)** — boot sequence, menu flow
- **[Combat System](Combat-System)** — damage formula, the "RNG" mechanism, the Lucky stat
- **[Monster System](Monster-System)** — the monster struct array, HP field, movement
- **[Item System](Item-System)** — inventory, item effects, swords/shields
- **[Quest System](Quest-System)** — quest types, objective tracking, floor depth
- **[Dungeon Mechanics](Dungeon-Mechanics)** — tile classes, stairs, warp, floor warnings, darkness
- **[Sprite Glossary](Sprite-Glossary)** — every known terrain/item/monster ID with its actual in-game graphic, by category
- **[Player Death and Game Over](Player-Death-and-Game-Over)**
- **[Building the ROM](Building-the-ROM)** — toolchain and build instructions
- **[Open Questions](Open-Questions)** — findings that still need a specific savestate to confirm

## Source of truth

This wiki is a curated, English-language summary. The detailed, chronological research log
(in German) lives in `NOTES.md` in the main repository — if a page here says "see NOTES.md",
that's where the full trace (code snippets, dead ends, exact PyBoy commands used) lives.
