"""Live tile/item ID grid overlay for Cave Noire, built on top of a running PyBoy
instance's memory (no save/load, no emulation control - purely read-only).

Decodes the current room exactly like the game's own renderer does (see
Call_000_2dfe/Call_000_2ef1 in src/bank_000.asm, and the "Decoding the room layout"
section of wiki/Dungeon-Mechanics.md):

    RoomBase = word[$2047 + 2*room]                  ; room = $c500
    addr     = RoomBase + 2*swap_nibble(row) + col    ; row/col are a 0-15 grid
    raw      = memory[addr]

If bit 7 of `raw` is clear, the tile is plain terrain (wall/floor/crack/etc. - the raw
value itself, not translated further here). If bit 7 is set, the low 7 bits are an
index into a 128-byte overlay table at $d500: `overlay = memory[$d500 + (raw & $7f)]`.
That overlay byte's own bit 7 means "still a closed chest" (the low 7 bits are then the
chest's slot, not the item type - see Call_000_35ef_CheckClosedChestAhead); bit 7 clear
means the low 7 bits *are* the item type ID lying exposed on the ground.
"""
from dataclasses import dataclass

ROOM_INDEX_ADDR = 0xC500
ROOM_BASE_TABLE = 0x2047
PLAYER_ROW_ADDR = 0xC503
PLAYER_COL_ADDR = 0xC504
OVERLAY_BASE = 0xD500
GRID_SIZE = 16  # row/col are swap-nibble addressed -> 0-15 each


def swap_nibble(v: int) -> int:
    return ((v << 4) | (v >> 4)) & 0xFF


@dataclass
class Cell:
    raw: int
    is_item: bool
    item_type: int | None  # only set when is_item
    closed_chest: bool

    @property
    def label(self) -> str:
        if not self.is_item:
            return f".{self.raw:02x}"
        if self.closed_chest:
            return f"[{self.item_type:02x}]"
        return f" {self.item_type:02x} "


def room_base(memory, room: int) -> int:
    lo = memory[ROOM_BASE_TABLE + 2 * room]
    hi = memory[ROOM_BASE_TABLE + 2 * room + 1]
    return lo | (hi << 8)


def read_cell(memory, room: int, row: int, col: int) -> Cell:
    base = room_base(memory, room)
    addr = (base + 2 * swap_nibble(row) + col) & 0xFFFF
    raw = memory[addr]
    if not (raw & 0x80):
        return Cell(raw=raw, is_item=False, item_type=None, closed_chest=False)

    overlay = memory[OVERLAY_BASE + (raw & 0x7F)]
    closed = bool(overlay & 0x80)
    item_type = overlay & 0x7F
    return Cell(raw=raw, is_item=True, item_type=item_type, closed_chest=closed)


def read_room_grid(memory):
    """Returns (room_index, player_row, player_col, grid[row][col]) for the whole
    16x16 addressable room."""
    room = memory[ROOM_INDEX_ADDR]
    player_row = memory[PLAYER_ROW_ADDR]
    player_col = memory[PLAYER_COL_ADDR]
    grid = [[read_cell(memory, room, row, col) for col in range(GRID_SIZE)] for row in range(GRID_SIZE)]
    return room, player_row, player_col, grid


# The Game Boy screen is 160x144px; each addressable row/col step is one 16x16 logical
# dungeon cell (two background tiles square), so ~10 columns x 9 rows are visible at
# once - matching what you'd actually see in the emulator window at a time, before the
# camera scrolls further. The viewport is just centered on the player and clamped to
# the 0-15 grid bounds; there's no traced camera/scroll register behind this, so it's
# an approximation, not pixel-exact.
VIEWPORT_WIDTH = 10
VIEWPORT_HEIGHT = 9


def viewport_bounds(player_row: int, player_col: int, width: int = VIEWPORT_WIDTH, height: int = VIEWPORT_HEIGHT):
    row_start = max(0, min(GRID_SIZE - height, player_row - height // 2))
    col_start = max(0, min(GRID_SIZE - width, player_col - width // 2))
    return row_start, col_start


def read_viewport_grid(memory, width: int = VIEWPORT_WIDTH, height: int = VIEWPORT_HEIGHT):
    """Returns (room, player_row, player_col, row_start, col_start, grid[row][col])
    for a width x height window centered on the player."""
    room = memory[ROOM_INDEX_ADDR]
    player_row = memory[PLAYER_ROW_ADDR]
    player_col = memory[PLAYER_COL_ADDR]
    row_start, col_start = viewport_bounds(player_row, player_col, width, height)
    grid = [
        [read_cell(memory, room, row_start + r, col_start + c) for c in range(width)]
        for r in range(height)
    ]
    return room, player_row, player_col, row_start, col_start, grid


def col_letter(col: int) -> str:
    return chr(ord("A") + col)
