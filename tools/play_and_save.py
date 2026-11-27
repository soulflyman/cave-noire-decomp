#!/usr/bin/env python3
"""Play Cave Noire in a window and save PyBoy savestates with a keypress.

PyBoy already has save/load states built in - no custom key handling needed:

    Arrow keys   D-pad
    A / S        Game Boy A / B
    Enter        Start
    Backspace    Select
    Z            Save state
    X            Load state
    P            Pause
    Space (hold) Speed up
    Esc          Quit

Pressing Z writes "<romfile>.state" (overwritten on every save). This script
just watches that file and, whenever it changes, copies it into
scratch/states/ under a timestamped name, so repeated Z-presses don't clobber
each other and you end up with a folder of savestates to hand off.

PyBoy has no in-window mute key, but the constructor takes a volume (0-100) and a
sound_emulated flag - pass --mute (or --volume N) on the command line to start quiet,
since there's no way to toggle it live once the window is open.

At startup the script asks whether you want to resume from one of the savestates in
scratch/states/ (listed newest-first) or start the ROM fresh - answer with a number or
just hit Enter for a fresh start.

Pass --grid to open a second window: a 16x16 chessboard-style grid (columns A-P, rows
1-16) of the current room, decoded live from RAM exactly like the game's own renderer
(see tools/tile_grid.py). Plain terrain tiles show as ".xx" (raw tile ID); an item or
chest overlay shows as " xx " (lying exposed) or "[xx]" (still a closed chest, xx = slot
not item type); the player's own cell is marked "@@". Handy for matching what's on
screen to the raw IDs behind it - e.g. to find item type $12 from the last reverse-
engineering session.

Usage:
    source .venv/bin/activate
    python3 tools/play_and_save.py ["rom/Cave Noire (Japan).gb"] [out_prefix] [--mute|--volume N] [--grid]
"""
import argparse
import shutil
import sys
import time
from pathlib import Path

from pyboy import PyBoy

PROJECT_ROOT = Path(__file__).resolve().parent.parent
DEFAULT_ROM = PROJECT_ROOT / "rom" / "Cave Noire (Japan).gb"
OUT_DIR = PROJECT_ROOT / "scratch" / "states"


def prompt_for_savestate():
    """Ask the user whether to resume from an existing savestate. Returns a Path or None."""
    states = sorted(OUT_DIR.glob("*.state"), key=lambda p: p.stat().st_mtime, reverse=True)
    if not states:
        print("No savestates found in scratch/states/ - starting fresh.")
        return None

    print("\nSavestates found (newest first):")
    for i, path in enumerate(states, start=1):
        print(f"  {i}. {path.name}")
    print("  0 / Enter. Start fresh (no savestate)")

    choice = input("Load which savestate? [0] ").strip()
    if not choice or choice == "0":
        return None

    try:
        index = int(choice)
        if 1 <= index <= len(states):
            return states[index - 1]
    except ValueError:
        pass

    print(f"'{choice}' is not a valid choice - starting fresh.")
    return None


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("rom", nargs="?", default=str(DEFAULT_ROM))
    parser.add_argument("out_prefix", nargs="?", default="save")
    parser.add_argument("--mute", action="store_true", help="Disable sound entirely")
    parser.add_argument("--volume", type=int, default=100, help="Sound volume 0-100 (default 100)")
    parser.add_argument("--grid", action="store_true", help="Open the live tile/item ID grid window")
    args = parser.parse_args()

    rom_path = Path(args.rom)
    out_prefix = args.out_prefix

    if not rom_path.is_file():
        print(f"ROM not found: {rom_path}")
        sys.exit(1)

    OUT_DIR.mkdir(parents=True, exist_ok=True)
    state_file = Path(str(rom_path) + ".state")
    last_mtime = state_file.stat().st_mtime if state_file.is_file() else None

    resume_state = prompt_for_savestate()

    print(f"Loading {rom_path}")
    print(f"Press Z in the game window to save - copies go to {OUT_DIR}/{out_prefix}_<n>.state")
    print("Press X to load the most recent Z-save. Esc to quit.")

    pyboy = PyBoy(
        str(rom_path),
        sound_emulated=not args.mute,
        sound_volume=args.volume,
    )
    pyboy.set_emulation_speed(1)

    if resume_state is not None:
        with open(resume_state, "rb") as f:
            pyboy.load_state(f)
        print(f"Resumed from {resume_state}")

    grid_window = None
    if args.grid:
        from tile_grid_window import TileGridWindow

        grid_window = TileGridWindow()
        print("Grid window opened - showing the current room's tile/item IDs.")

    count = 0
    tick_n = 0
    try:
        while pyboy.tick():
            if state_file.is_file():
                mtime = state_file.stat().st_mtime
                if mtime != last_mtime:
                    last_mtime = mtime
                    count += 1
                    dest = OUT_DIR / f"{out_prefix}_{count:03d}.state"
                    shutil.copyfile(state_file, dest)
                    print(f"Saved -> {dest}")

            if grid_window is not None:
                tick_n += 1
                if tick_n % 10 == 0:
                    if not grid_window.pump(pyboy.memory):
                        grid_window = None  # window was closed
    except KeyboardInterrupt:
        pass
    finally:
        pyboy.stop()


if __name__ == "__main__":
    main()
