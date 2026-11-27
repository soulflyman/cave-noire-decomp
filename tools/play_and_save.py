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

Usage:
    source .venv/bin/activate
    python3 tools/play_and_save.py ["rom/Cave Noire (Japan).gb"] [out_prefix] [--mute|--volume N]
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


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("rom", nargs="?", default=str(DEFAULT_ROM))
    parser.add_argument("out_prefix", nargs="?", default="save")
    parser.add_argument("--mute", action="store_true", help="Disable sound entirely")
    parser.add_argument("--volume", type=int, default=100, help="Sound volume 0-100 (default 100)")
    args = parser.parse_args()

    rom_path = Path(args.rom)
    out_prefix = args.out_prefix

    if not rom_path.is_file():
        print(f"ROM not found: {rom_path}")
        sys.exit(1)

    OUT_DIR.mkdir(parents=True, exist_ok=True)
    state_file = Path(str(rom_path) + ".state")
    last_mtime = state_file.stat().st_mtime if state_file.is_file() else None

    print(f"Loading {rom_path}")
    print(f"Press Z in the game window to save - copies go to {OUT_DIR}/{out_prefix}_<n>.state")
    print("Press X to load the most recent Z-save. Esc to quit.")

    pyboy = PyBoy(
        str(rom_path),
        sound_emulated=not args.mute,
        sound_volume=args.volume,
    )
    pyboy.set_emulation_speed(1)

    count = 0
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
    except KeyboardInterrupt:
        pass
    finally:
        pyboy.stop()


if __name__ == "__main__":
    main()
