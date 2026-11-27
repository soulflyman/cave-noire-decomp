"""Tkinter window that live-renders the current room's tile/item ID grid.

Pumped manually from the main PyBoy loop (play_and_save.py) - no threads, just a
plain Tk root whose event loop we pump a couple of times a second alongside
pyboy.tick(). See tile_grid.py for how cells are decoded from memory.

Shows a fixed width x height window starting at row 0/col 0 (see
tile_grid.VIEWPORT_WIDTH/HEIGHT) - confirmed via OAM cross-checks against many
savestates that this is always exactly the screen's top-left cell, no camera/scroll
offset to account for.

Each grid cell is rendered as a fixed-size square (CELL_PX) rather than sized by
character count, so the WxH grid of cells reproduces the Game Boy screen's own
160x144 proportions (10x9 logical 16x16 cells) - makes it easier to eyeball the
grid window next to the emulator window and match positions up.
"""
import tkinter as tk
from tkinter import font as tkfont

from tile_grid import VIEWPORT_HEIGHT, VIEWPORT_WIDTH, col_letter, read_viewport_grid

CELL_PX = 56  # square, so the WxH grid keeps the game screen's 160x144 proportions
HEADER_PX = 24
BG_TERRAIN = "#1e1e1e"
BG_ITEM = "#2d5f2d"
BG_CHEST = "#5f4a2d"
BG_PLAYER = "#5f2d2d"
FG = "#e0e0e0"


def _fixed_cell(parent, width, height):
    """A Frame locked to an exact pixel size (grid_propagate(False)), with a Label
    filling it - so cells don't grow/shrink to fit their text."""
    frame = tk.Frame(parent, width=width, height=height, bg=BG_TERRAIN)
    frame.grid_propagate(False)
    label = tk.Label(frame, bg=BG_TERRAIN, fg=FG)
    label.place(relx=0.5, rely=0.5, anchor="center")
    return frame, label


class TileGridWindow:
    def __init__(self, width: int = VIEWPORT_WIDTH, height: int = VIEWPORT_HEIGHT):
        self.width = width
        self.height = height

        self.root = tk.Tk()
        self.root.title("Cave Noire - Tile/Item Grid")
        self.root.configure(bg="black")
        self.mono = tkfont.Font(family="Courier", size=11)
        self.mono_small = tkfont.Font(family="Courier", size=9)

        self.info_label = tk.Label(
            self.root, text="", bg="black", fg=FG, font=self.mono, anchor="w"
        )
        self.info_label.grid(row=0, column=0, columnspan=width + 1, sticky="w", padx=4, pady=(4, 2))

        self.col_headers = []
        for col in range(width):
            frame, label = _fixed_cell(self.root, CELL_PX, HEADER_PX)
            frame.configure(bg="black")
            label.configure(bg="black", fg="#888", font=self.mono_small)
            frame.grid(row=1, column=col + 1)
            self.col_headers.append(label)

        self.row_headers = []
        self.cell_labels = []
        for row in range(height):
            rframe, rlabel = _fixed_cell(self.root, HEADER_PX, CELL_PX)
            rframe.configure(bg="black")
            rlabel.configure(bg="black", fg="#888", font=self.mono_small)
            rframe.grid(row=row + 2, column=0)
            self.row_headers.append(rlabel)

            cell_row = []
            for col in range(width):
                frame, label = _fixed_cell(self.root, CELL_PX, CELL_PX)
                label.configure(font=self.mono)
                frame.grid(row=row + 2, column=col + 1, padx=1, pady=1)
                cell_row.append((frame, label))
            self.cell_labels.append(cell_row)

        self._closed = False
        self.root.protocol("WM_DELETE_WINDOW", self._on_close)

    def _on_close(self):
        self._closed = True
        self.root.destroy()

    def pump(self, memory) -> bool:
        """Re-reads memory and redraws. Returns False once the window has been closed."""
        if self._closed:
            return False

        room, player_row, player_col, row_start, col_start, grid = read_viewport_grid(
            memory, self.width, self.height
        )
        self.info_label.configure(
            text=f"room {room}  player @ {col_letter(player_col)}{player_row}"
        )

        for col in range(self.width):
            self.col_headers[col].configure(text=col_letter(col_start + col))
        for row in range(self.height):
            self.row_headers[row].configure(text=f"{row_start + row:>2}")

        for row in range(self.height):
            abs_row = row_start + row
            for col in range(self.width):
                abs_col = col_start + col
                cell = grid[row][col]
                frame, label = self.cell_labels[row][col]
                label.configure(text=cell.label)
                if abs_row == player_row and abs_col == player_col:
                    bg = BG_PLAYER
                elif cell.is_item and cell.closed_chest:
                    bg = BG_CHEST
                elif cell.is_item:
                    bg = BG_ITEM
                else:
                    bg = BG_TERRAIN
                frame.configure(bg=bg)
                label.configure(bg=bg)

        try:
            self.root.update_idletasks()
            self.root.update()
        except tk.TclError:
            self._closed = True
            return False
        return True
