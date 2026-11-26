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
   it's referenced in 8+ different state contexts across bank 0). Which specific game state
   this third call site belongs to (a timed death cause like poison or hunger, perhaps) was
   not traced further, since the HP-based triggers were the main target of the
   investigation.

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
