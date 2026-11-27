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

# Keep these two in sync with wiki/Dungeon-Mechanics.md ("Known raw terrain tile IDs")
# and wiki/Item-System.md ("Confirmed item type IDs") - anything not listed here gets
# flagged in the grid window as still-unidentified, so it's easy to spot live and go
# hunt down what it actually is.
KNOWN_TERRAIN_IDS = {0x00, 0x06, 0x07, 0x08, 0x09, 0x10, 0x1D}
KNOWN_ITEM_TYPES = {
    0x01, 0x02, 0x03, 0x06, 0x07, 0x0A, 0x0D, 0x10, 0x11, 0x12,
    0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F,
}


def swap_nibble(v: int) -> int:
    return ((v << 4) | (v >> 4)) & 0xFF


@dataclass
class Cell:
    raw: int
    is_item: bool
    item_type: int | None  # only set when is_item
    closed_chest: bool

    @property
    def known(self) -> bool:
        if self.is_item:
            if self.closed_chest:
                # item_type here is actually the chest's slot index, not an item type
                # ID - there's nothing to identify until it's opened, so don't flag it.
                return True
            return self.item_type in KNOWN_ITEM_TYPES
        return self.raw in KNOWN_TERRAIN_IDS

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
# once. SCX/SCY (the PPU hardware scroll registers) sit at 0 in every dungeon
# savestate checked - this game doesn't hardware-scroll the view at all. Cross-checked
# against OAM sprite Y/X in 9+ independent dungeon savestates spanning many different
# rooms and row/col values: screen position in 16px cells equals (row, col) directly,
# zero offset, every single time. So rooms apparently never exceed the visible
# viewport - there's no camera to account for, and no centering is needed: row 0/col 0
# is always the screen's top-left cell. (An earlier version of this tool incorrectly
# assumed a player-centered scrolling camera over a 16x16 room; that produced the wrong
# on-screen position and could clip real items out of the displayed window entirely.)
# Height is 8, not 9: the bottom 16px of the screen is the fixed HUD bar (HP/monster
# counter/floor number), not part of the scrollable dungeon view - row 8 is always
# empty padding in every sample checked, and HUD sprites alias into it if included.
VIEWPORT_WIDTH = 10
VIEWPORT_HEIGHT = 8


def read_viewport_grid(memory, width: int = VIEWPORT_WIDTH, height: int = VIEWPORT_HEIGHT):
    """Returns (room, player_row, player_col, grid[row][col]) for the width x height
    window starting at row 0/col 0 - which is always the screen's top-left cell."""
    room = memory[ROOM_INDEX_ADDR]
    player_row = memory[PLAYER_ROW_ADDR]
    player_col = memory[PLAYER_COL_ADDR]
    grid = [[read_cell(memory, room, r, c) for c in range(width)] for r in range(height)]
    return room, player_row, player_col, 0, 0, grid


def col_letter(col: int) -> str:
    return chr(ord("A") + col)


# Monsters (and other sprite-based things like the darkness eye-pair) aren't part of
# the background tile grid at all - they're plain OAM sprites, tracked completely
# separately (see the monster array at $c5c0, wiki/Monster-System.md). Rather than
# rely on that array (which also contains non-monster entries that are hard to tell
# apart reliably, see that doc's "Non-monster entries" section), we just scan OAM
# directly: screen position in 16px cells is (oam_y-16)//16, (oam_x-8)//16 - the same
# zero-offset mapping confirmed for the player above - and anything that isn't where
# the player themselves currently stands is "something else" worth flagging.
OAM_BASE = 0xFE00
OAM_COUNT = 40


def read_sprite_cells(memory, player_row: int, player_col: int, width: int, height: int) -> set[tuple[int, int]]:
    """Returns the set of (row, col) grid cells currently covered by a non-player
    sprite, clipped to the given width/height (so off-screen HUD sprites etc. are
    naturally excluded)."""
    cells = set()
    for i in range(OAM_COUNT):
        y = memory[OAM_BASE + i * 4]
        x = memory[OAM_BASE + i * 4 + 1]
        if y == 0 or x == 0:
            continue
        row = (y - 16) // 16
        col = (x - 8) // 16
        if not (0 <= row < height and 0 <= col < width):
            continue
        if (row, col) == (player_row, player_col):
            continue
        cells.add((row, col))
    return cells
