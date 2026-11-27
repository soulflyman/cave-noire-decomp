# Combat System

## Targeting is a two-step select-then-confirm, and there is no hit/miss roll

Combat is **not** a simple bump-attack. Confirmed via live play (Beaten Dying Moon
emulator), the actual sequence is:

1. Walk up to stand adjacent to one or more monsters.
2. Press the direction toward the monster you want to target — this doesn't move you (you're
   already adjacent) or attack yet, it **selects** that monster. The selection is shown as
   blinking corner markers on the monster's tile. If multiple monsters are adjacent, pressing
   a different direction re-selects a different one.
3. Press **A** to actually execute the attack on the currently-selected target.

So targeting takes a direction press *and* a separate A press — simply walking into a
monster's tile does not attack by itself. Every attack executed this way lands; there is
**no accuracy/miss chance anywhere in the game**. This was confirmed on both sides of
combat:

- **Monster → player** damage is a deterministic per-monster-type table lookup
  (`Call_001_518a`-style lookups), not a random roll.
- **Player → monster** damage (`Call_001_5c47`/`Call_001_5c75`, bank 1) is the same kind of
  deterministic table/arithmetic lookup, confirmed by watching the monster's HP field drop
  by a varying-but-formulaic amount on every single attempt across two independent live
  fights (never a "nothing happened, it dodged" turn).

## The damage formula

Effective attack/defense values used in combat are computed on the fly:

- Effective attack = `wPlayerAttack` + two equipment bonus bytes (clamped to 99 in BCD)
- Effective defense = `wPlayerDefense` + two equipment bonus bytes (clamped to 99 in BCD)

The equipment bonus bytes come from equipped swords/shields — see
[Item System](Item-System) for the exact bonus table.

Damage itself is integer arithmetic on attack vs. defense, scaled by a
direction/facing-derived factor (`$c539 and $1f`), with a minimum damage of 1 if
`attack × 2 ≤ defense`. Observed damage values across two test fights: 2, 2, 3, 4, 1, 2 —
confirming this is a real formula, not the fixed "always exactly 2" that an earlier,
smaller sample had suggested.

## There is no dedicated RNG function

Cave Noire doesn't have a classic random number generator (no LFSR, no `rDIV` read anywhere
relevant). Instead, it reuses a harmless side effect of the game loop as a "good enough"
randomness source:

1. `RST_00` is a second jump-table trampoline (like `RST_28`, which does `hl += a`, but
   `RST_00` is a jump-table instead): the index comes from `a`, and the 2-bytes-per-entry
   table lives directly in the byte stream right after the `rst RST_00` opcode — which is
   why it looks like garbage code to a naive disassembler until you realize it's data.
2. Every monster struct (16 bytes, base `$c5c0 + 16×slot`) has a 2-3 bit state/direction
   field at offset `$0f`. This field is used (masked with `and $03`/`and $07`, then
   `rst RST_00`) as an index into a 4-entry jump table pointing at the four cardinal
   movement functions.
3. The actual "randomness": this field gets incremented every time it is **not** that
   monster's turn in the per-turn dispatch loop. Since the game loop steps through multiple
   monster types per turn, this counter increments at a cadence the player can't predict —
   its low bits behave like a dice roll even though it's just a dumb running counter.

This also answers the "hit chance" question definitively: there isn't one. Whether a
monster can attack at all is purely positional (aligned with the player on row/column,
adjacent), and this pseudo-random counter only determines *whether/where it moves instead*.

## The Lucky stat

`wPlayerLucky` (`$c123`) does **not** affect hit chance or combat accuracy at all. All of
its uses are in the item-effect dispatcher:

1. **Healing**: `new HP = min(current HP + Lucky, max HP)` for one potion-like item effect.
2. **A second item type**: heals by `Lucky + 1`.
3. **Random event timer** (`$c515`): for most item effects, `$c515` is set from the LCG
   pseudo-random source (`$c011`/`$c012`, `state = state×9 + $0929 mod $11d7`), with the
   *range* of the result scaled by `Lucky / 2` — e.g. a trap fuse duration or buff duration.
4. **Status screen**: Lucky is also just displayed as a stat number, no computation there.

So: higher Lucky means better healing items and wider random-duration ranges for certain
item effects — not a better chance to hit or be hit.
