"""Tkinter window that live-renders the current room's tile/item ID grid.

Pumped manually from the main PyBoy loop (play_and_save.py) - no threads, just a
plain Tk root whose event loop we pump a couple of times a second alongside
pyboy.tick(). See tile_grid.py for how cells are decoded from memory.

Shows a viewport centered on the player (roughly what's visible in the emulator
window at once, see tile_grid.VIEWPORT_WIDTH/HEIGHT), not the whole addressable
16x16 room - the row/column headers shift with the player since the window scrolls.
"""
import tkinter as tk
from tkinter import font as tkfont

from tile_grid import VIEWPORT_HEIGHT, VIEWPORT_WIDTH, col_letter, read_viewport_grid

CELL_W = 5  # characters
BG_TERRAIN = "#1e1e1e"
BG_ITEM = "#2d5f2d"
BG_CHEST = "#5f4a2d"
BG_PLAYER = "#5f2d2d"
FG = "#e0e0e0"


class TileGridWindow:
    def __init__(self, width: int = VIEWPORT_WIDTH, height: int = VIEWPORT_HEIGHT):
        self.width = width
        self.height = height

        self.root = tk.Tk()
        self.root.title("Cave Noire - Tile/Item Grid")
        self.root.configure(bg="black")
        mono = tkfont.Font(family="Courier", size=11)
        self.mono = mono

        self.info_label = tk.Label(
            self.root, text="", bg="black", fg=FG, font=mono, anchor="w"
        )
        self.info_label.grid(row=0, column=0, columnspan=width + 1, sticky="w", padx=4, pady=(4, 2))

        self.col_headers = []
        for col in range(width):
            lbl = tk.Label(self.root, text="", bg="black", fg="#888", font=mono, width=CELL_W)
            lbl.grid(row=1, column=col + 1)
            self.col_headers.append(lbl)

        self.row_headers = []
        self.cell_labels = []
        for row in range(height):
            row_label = tk.Label(self.root, text="", bg="black", fg="#888", font=mono, width=3)
            row_label.grid(row=row + 2, column=0)
            self.row_headers.append(row_label)

            cell_row = []
            for col in range(width):
                lbl = tk.Label(
                    self.root, text="", bg=BG_TERRAIN, fg=FG, font=mono, width=CELL_W
                )
                lbl.grid(row=row + 2, column=col + 1, padx=1, pady=1)
                cell_row.append(lbl)
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
            self.col_headers[col].configure(text=col_letter(col_start + col).center(CELL_W))
        for row in range(self.height):
            self.row_headers[row].configure(text=f"{row_start + row:>2}")

        for row in range(self.height):
            abs_row = row_start + row
            for col in range(self.width):
                abs_col = col_start + col
                cell = grid[row][col]
                lbl = self.cell_labels[row][col]
                lbl.configure(text=cell.label)
                if abs_row == player_row and abs_col == player_col:
                    lbl.configure(bg=BG_PLAYER)
                elif cell.is_item and cell.closed_chest:
                    lbl.configure(bg=BG_CHEST)
                elif cell.is_item:
                    lbl.configure(bg=BG_ITEM)
                else:
                    lbl.configure(bg=BG_TERRAIN)

        try:
            self.root.update_idletasks()
            self.root.update()
        except tk.TclError:
            self._closed = True
            return False
        return True
