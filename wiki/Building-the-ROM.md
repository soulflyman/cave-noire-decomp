# Building the ROM

## Toolchain

- `tools/mgbdis/` — [mgbdis](https://github.com/mattcurrie/mgbdis) v3.0 (git submodule),
  the Game Boy disassembler that produced the original `src/` disassembly
- RGBDS (`rgbasm`/`rgblink`/`rgbfix`) — installed system-wide, not vendored in this repo
- `.venv/` — Python virtual environment with [PyBoy](https://github.com/Baekalfen/PyBoy) +
  Pillow, used for headless emulation: memory watchpoints, screenshots, scripted input

## Build

```sh
cd src
make
```

This rebuilds `game.gb` from the disassembly. Every change made to the source in this
project is checked against this build, and must produce a **bit-identical** ROM:

```
MD5: 10d92861e262069ce31559e12b927aa0
```

matching `rom/Cave Noire (Japan).gb`. If a change breaks the rebuild or changes the MD5,
it's reverted — labels, comments, and `db`-conversions of previously mis-decoded "code" are
all required to be semantically invisible to the assembler output.

## Why there's no code/data separation (CDL) yet

mgbdis v3.0 does **not** have a `--cdl` flag, despite some earlier project notes assuming it
did. SameBoy was also checked and doesn't have a CDL export feature either. mgbdis instead
supports its own `.sym`-file format with `.code`/`.data`/`.text`/`.image` block annotations,
which would need to be produced manually or via a tool like Matt Currie's "Beaten Dying
Moon" web emulator.

Given the effort that would take, code/data separation has been deliberately deferred in
favor of incremental, RAM-watchpoint-driven exploration (find a mechanic, verify it
dynamically with PyBoy, document it, rename what's relevant). This means some regions that
mgbdis mis-decoded as code are actually data (and vice versa) — where that's safely provable
(no real jump targets land inside the region), it gets converted to explicit `db`
statements; where it's ambiguous, the original mis-decoded-but-byte-correct text is left
untouched and the real meaning is documented in `NOTES.md`/this wiki instead, to avoid
risking a broken rebuild.
