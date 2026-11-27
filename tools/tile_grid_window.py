"""Tkinter window that live-renders the current room's tile/item ID grid.

Pumped manually from the main PyBoy loop (play_and_save.py) - no threads, just a
plain Tk root whose event loop we pump a couple of times a second alongside
pyboy.tick(). See tile_grid.py for how cells are decoded from memory.
"""
import tkinter as tk
from tkinter import font as tkfont

from tile_grid import GRID_SIZE, col_letter, read_room_grid

CELL_W = 5  # characters
BG_TERRAIN = "#1e1e1e"
BG_ITEM = "#2d5f2d"
BG_CHEST = "#5f4a2d"
BG_PLAYER = "#5f2d2d"
FG = "#e0e0e0"


class TileGridWindow:
    def __init__(self):
        self.root = tk.Tk()
        self.root.title("Cave Noire - Tile/Item Grid")
        self.root.configure(bg="black")
        mono = tkfont.Font(family="Courier", size=11)

        self.info_label = tk.Label(
            self.root, text="", bg="black", fg=FG, font=mono, anchor="w"
        )
        self.info_label.grid(row=0, column=0, columnspan=GRID_SIZE + 1, sticky="w", padx=4, pady=(4, 2))

        # Column headers (A-P)
        for col in range(GRID_SIZE):
            tk.Label(
                self.root, text=col_letter(col).center(CELL_W), bg="black", fg="#888", font=mono
            ).grid(row=1, column=col + 1)

        self.row_labels = []
        self.cell_labels = []
        for row in range(GRID_SIZE):
            row_label = tk.Label(
                self.root, text=f"{row:>2}", bg="black", fg="#888", font=mono
            )
            row_label.grid(row=row + 2, column=0)
            self.row_labels.append(row_label)

            cell_row = []
            for col in range(GRID_SIZE):
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

        room, player_row, player_col, grid = read_room_grid(memory)
        self.info_label.configure(
            text=f"room {room}  player @ {col_letter(player_col)}{player_row}"
        )

        for row in range(GRID_SIZE):
            for col in range(GRID_SIZE):
                cell = grid[row][col]
                lbl = self.cell_labels[row][col]
                lbl.configure(text=cell.label)
                if row == player_row and col == player_col:
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
