# Player Death and Game Over

When `wPlayerHP` reaches 0, the player sprite disappears immediately (no death animation
delay) — the game keeps running for a few more frames (a monster might still finish its
move, including showing a last damage popup), then the Game Over screen appears:

> **残念！！ もう1回 チャレンジ！！**
> ("Too bad!! Try again!!") — with a sphere graphic and the player sprite below.

Pressing **A** returns to the Guild menu. No permadeath, no visible penalty — a simple
"try again" loop back to the main menu.

## Trigger code

`Jump_000_0c13_TriggerGameOver` (bank 0, `$0c13`) is called from three places:

1 and 2. Two `wPlayerHP == 0` checks directly after the two main per-turn subroutine calls
in the main turn-update routine (bank 0, `$0b37` and `$0b4d`).

3. A third call site at `$0d4c`, gated not by an HP check but by a generic countdown:
   `ld hl, $c149; dec [hl]; jp z, ...`. `$c149` is a generic "wait N frames" timer reused by
   many unrelated game states (not floor-crack-specific, despite an earlier hypothesis —
   it's referenced in 8+ different state contexts across bank 0).

   **Which state this belongs to is now confirmed:** the main state dispatcher
   (`Call_000_0af0`, bank 0 `$0af0`) reads `$c100` and uses it as an index into a 13-entry
   word jump table living inline right after the `rst RST_00` opcode at `$0af8`-`$0b11`
   (states `0`-`12`; see `Jump_000_0433_RstJumpTableTrampoline` for how `rst RST_00` reads
   this kind of table). Reading those 26 bytes directly from the ROM file, entry `11`
   (`$0b8`-`$0b9` of the table, i.e. `$0af8 + 11*2`) is `$0d48` — exactly the start of this
   third call site's handler. So **trigger #3 fires from main state `$c100 = 11`**.

   That handler's full logic (`$0d48`-`$0d5c`) decrements `$c149` every frame, and
   additionally, every 4th frame (`[$c149] & 3 == 0`), either clears the whole sprite OAM
   block `$da00`-`$da2c` (12 sprites, via `Jump_000_32a3`) if `[$da00] & $0f == 0`, or
   otherwise advances a sprite animation frame counter (`jr_000_0d3d`, shared with the
   corridor-run code used elsewhere). This is the same `$da00`/`$c036`/`$c037`/floor-digit
   bookkeeping used by the neighboring dispatcher states (`4`, `8`-`12`), which together look
   like the stairs-down / corridor-run floor-transition animation sequence (one of them,
   `Call_000_0d87`, explicitly draws the floor number and calls
   `Call_000_0ec9_DrawFloorNumberTile`). So trigger #3 most likely isn't a distinct "timed
   death" cause (poison/hunger) — it looks like a defensive fallback inside that animation
   sequence (if its countdown is ever allowed to run out without the state being advanced
   normally, the game forces a Game Over rather than hanging). **Still open:** no literal
   `ld a, $0b` / `ld [$c100], a` exists anywhere in bank 0 or bank 1, so exactly how/when the
   dispatcher *enters* state 11 wasn't pinned down — it must happen via a register-computed
   value rather than a hardcoded literal.

When triggered, `Jump_000_0c13_TriggerGameOver`:

1. Forces HP to 0 via an artificial giant hit (`e = $99`) through the normal damage-subtract
   routine — a redundant safety net in case HP wasn't already exactly 0 when called.
2. Sets the main state dispatcher (`$c100`) to `$09`, the state that draws the Game Over
   screen.
3. Sets `$c149 = $40` and plays the loss jingle.

There's also a secondary effect worth knowing about: the damage-application code itself
(`jr_001_5ba3_SubtractDamageFromHP`) checks `if HP is now in range 1-3` and triggers a
separate low-HP warning effect (sound/blink, via a small table at `$5bc7`) — but explicitly
does **nothing** when HP reaches exactly 0. The actual Game Over trigger lives in the main
turn loop, not in the damage-application code itself.
