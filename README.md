# Cave Noire Decomp

A work-in-progress disassembly/decompilation project for **Cave Noire** (Konami, Game Boy,
1991), aiming for a bit-identical rebuild of the original ROM.

```sh
cd src
make
```

rebuilds `game.gb` from the disassembly in `src/`; it must match the original ROM's MD5
(`10d92861e262069ce31559e12b927aa0`) exactly.

For everything else — mechanics documented so far, RAM map, how much of the code is
identified, and what's still open — see the
**[wiki](https://github.com/soulflyman/cave-noire-decomp/wiki)**.
