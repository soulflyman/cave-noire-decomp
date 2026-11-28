# Open Questions

Things that are either unconfirmed (plausible from static analysis only) or not found at
all, each with the kind of savestate/game state that would help close the gap. If you have
PyBoy savestates matching any of these, or know how to reach them quickly, this is the
fastest way to contribute.

## Dungeon mechanics ([Dungeon Mechanics](Dungeon-Mechanics))

- ~~**Darkness/torch mechanic**~~ — confirmed: dither tile is raw VRAM id `$5f`, the
  monster shows as a 2-sprite eye-pair (OAM tile `140`), and it's a real dynamic
  fog-of-war with memory (revealed tiles stay revealed). `Akari` (item `$0d`) is a
  one-shot "reveal more of this room now" burst, consumed on use, that does **not** reveal
  hidden monsters (those need separate approach). The exact per-move reveal routine itself
  is still unlocated — see [Dungeon Mechanics](Dungeon-Mechanics).
- ~~**"!!" floor-crack warning / hole-jump mechanic**~~ — confirmed, and it turns out
  they're the same tile: raw tile value `$1d` is completely harmless to stand on, but a
  fast double-press of the facing direction jumps two tiles at once, skipping it entirely.
  The `Call_000_3772`/`$0f` "hole-jump icon" hypothesis was a dead end - no such tile exists
  in the tested room; what the community calls "a hole" is this same crack tile. See
  [Dungeon Mechanics](Dungeon-Mechanics). Still open: the exact code that detects the fast
  double-press and triggers the 2-tile jump.
- ~~**"?" secret-wall warning icon**~~ — confirmed, and the `Call_000_2f48`/`$09` hypothesis
  was wrong (same lesson as the hole-jump one): the real mechanism is `$c125` state 23
  (`Jump_000_3e89_SecretPassageDispatch`), gated by a per-room, per-direction bitmask at
  `$c20f`. Bumping a wall with its bit set starts a ~64-tick delay, then permanently clears
  the bit, links the neighbor room via the same `$206b` table the warp mechanic uses, and
  lets the player walk straight through - matching "opens via simply walking into it". Still
  open: the exact render routine for the "?" bubble itself, and how/when `$c20f`'s bits get
  set in the first place. See [Dungeon Mechanics](Dungeon-Mechanics).
- ~~**Warp mechanic**~~ — confirmed exactly as hypothesized: `$c427`/`$c428` are a warp
  pair's two room-index endpoints, and stepping onto the tile + pressing A teleports to
  whichever endpoint isn't the current room, same floor, different room. See
  [Dungeon Mechanics](Dungeon-Mechanics).
- **Lava**: behavior now confirmed from the official English instruction booklet - falling
  in zeroes your HP outright and fails the quest (distinct from a Hole, which only damages
  + drops you a floor). Tile class still not identified. Needs a savestate in a room with
  lava tiles (per the wiki, likely near Salamander spawns).
- **A possible "fake hole" / invisible walkable tile**: the official booklet warns "What at
  first sight looks like a hole, may actually be an 'invisible tile' that can be walked
  upon. If a Centipede or Tarantula walks above the hole, it could be an invisible tile."
  Not matched to any raw tile value yet. Needs a savestate of a room with such a tile and
  a ground-based monster observed crossing it.
- ~~**Door** (dungeon exit)~~ — confirmed: approaching it and pressing A sets `$c100=12`,
  triggering a fade + corridor-run animation and a results screen with a looping
  per-monster kill list (name/weight/height). Still open: the exact input to dismiss the
  results screen (nothing tried advanced past it), and the exact trigger condition for
  the exit tile itself (looked like a generic wall tile class, so likely a hardcoded
  coordinate check rather than a tile-class entry). See
  [Dungeon Mechanics](Dungeon-Mechanics).
- **Fairy Cage**: not investigated at all. Needs a savestate in a Fairy quest with a visible
  cage and the key item in inventory.
- **Ganseki item effect** (fill hole/rock barrier): the official instruction booklet
  confirms this behavior in text ("When placed on top of a hole or lava, it creates a tile.
  When placed on a tile, it creates an obstacle.") but it's not yet matched to a specific
  item ID or confirmed live. Needs a savestate with the Ganseki item in inventory, standing
  next to a hole.
- **Oriru item effect** (place stairs on adjacent tile): booklet-confirmed in text ("If
  there are no obstacles, creates stairs leading to the next level."), same caveat as
  Ganseki above. Needs a savestate with the Oriru item in inventory.
- ~~**The "real" two-phase treasure chest**~~ — resolved: it's the same `$d500`
  tile-overlay mechanism after all, the bit 7 meaning was just initially read backwards.
  Bit 7 set = still-closed chest (select with direction + A opens it, revealing the item
  without collecting it); bit 7 clear = item lying exposed (walk onto it + A collects it).
  Gold-pile item types `$10`/`$11` skip the closed-chest step and are found already
  exposed. See [Dungeon Mechanics](Dungeon-Mechanics).

## Monster system ([Monster System](Monster-System))

- ~~**Monster type → stats table**~~ — resolved: the per-class stat table is fully decoded
  (32 classes), and there's no single static type→class table - class and type are both
  supplied directly by the room/quest's own encounter descriptor data at spawn time (see
  [Monster System](Monster-System) "Type -> class resolution"). Crab (`$01`) = class `6`,
  Tarantula (`$03`) = class `3`, the stationary boulder (`$02`) = class `4`, all confirmed
  byte-for-byte against live captures. ~20 StrategyWiki types still unidentified, each
  needing a savestate with a visible, undamaged specimen.
- **What struct offset `$09` actually is**: confirmed from the stat table to generally
  differ from current HP (`$06`), contradicting the old "max HP" assumption. Searched
  statically for every direct reader of this offset in bank 0/1 - found none outside the
  spawn-time bulk copy (the confirmed damage formula only reads offsets `$03`/`$06`). So
  either it's read through a path not yet located, or it's write-only in the traced code.
  Needs a live combat test on a class where it clearly differs from HP, to narrow down what
  it affects (if anything observable).
- **A `$01`-type conflict**: a second creature sharing Crab's type byte (`$01`) but with
  HP 8 instead of Crab's confirmed 5 turned up in two savestates. Needs a live combat test
  (HP-decrease tracking, as used for Crab) to figure out whether it's a real variant or a
  misread - and which stat class it uses (Crab's is `6`).
- A possible **real Minotaur**: a third creature in a Crab/boulder savestate used class
  `19` (HP `7`, distinct from both). Needs its own savestate to confirm type ID and
  movement pattern.

## Item system ([Item System](Item-System))

- **Four item type IDs never traced at all**: `$0f`, `$15`, `$16`, `$17` (see
  [Item System](Item-System) "Fully untraced dispatch entries"). Purely static work -
  decode their `Call_001_5190_ItemUseEffectDispatch` entries the same way `$13`/`$20` were
  done. The official instruction booklet's "Fly" (warp to another spot in the same room)
  and "transforms a monster" effects don't match any already-traced ID, making them the
  leading candidates for these four.
- **~7 item type IDs with known behavior but unconfirmed exact name**: `$04`/`$05`/`$08`/
  `$09`/`$0b`/`$0c`/`$0e`/`$13`/`$20` (see [Item System](Item-System) "Partially understood"
  for what each one's code actually does - a real master dispatch table was found at
  `Call_001_5190_ItemUseEffectDispatch`, bank 1 `$5190`). `$14` = Kagi is a confident static
  deduction from that same table but still not live-confirmed. `$13` and `$20` are now also
  fully traced statically: `$13` scans all 36 monster slots for a type match against
  `$c420` and decrements a per-room/per-type counter for each hit (plausible repel/banish
  effect); `$20` **increments its own inventory slot in place** (turning it into the
  never-otherwise-seen item `$21`) and then scans the room's tiles for something before
  showing a visual effect - unusually, it's not a normal "use and consume" item at all. For
  each: a savestate with that specific item in inventory (`wInventory`, `$c140`-`$c147`),
  then use it and watch what actually happens on screen.
- **Still fully unidentified**: Tobu (warp), Gold (no slot - see `$10`/`$11` in
  [Dungeon Mechanics](Dungeon-Mechanics) for the likely actual candidates).
- **Raw tile `$22`**: statically deduced to be the Fairy Cage (item `$14`/Kagi's effect
  code scans for it) - needs a Fairy-quest savestate with a visible cage to confirm.
- **Sword/shield bonus actually applied in combat**: the bonus tables themselves are
  confirmed from ROM bytes, but applying one and then fighting with it hasn't been tested
  live. Needs a savestate with a sword or shield in inventory, followed by a combat test.

## Loose ends

- **Stairs missing in the Monster-quest test room (quest 1, level 1)**: fully mapped, no
  stairs found anywhere in the room. Unclear if that's specific to this room or general for
  this quest type/level. Needs a savestate of quest 1 at a higher level to compare.
- **Secret passages in the same test room**: searched, not found — possibly the same
  room-specific anomaly. Worth retrying in a different dungeon/quest type.
- ~~**Ambiguous labels in `bank_002.asm`** (`jr_002_6e0d`, `jr_002_6e39`)~~ — resolved
  statically: both are pure disassembly artifacts, not reachable code. Every reference to
  either label is itself another `jr` instruction inside the same byte range
  (`$6d19`-`$6e6b`); nothing outside that range ever calls or jumps in. That whole range
  shows the classic signature of raw data mis-decoded as Z80 opcodes (endlessly repeating
  register-pair ops like `ld l,c`/`xor d`/`ld a,[bc]`), running right up to the already
  -confirmed real quest-objective table at `$6e10`. See [Quest System](Quest-System).
- ~~**Game Over trigger #3's game state**~~ — resolved statically: it's main dispatcher
  state `$c100 = 11`, found by reading the inline `rst RST_00` jump table at bank 0 `$0af8`
  directly from the ROM bytes (entry 11 = `$0d4c`'s handler at `$0d48`). The handler looks
  like part of the stairs-down/corridor-run floor-transition animation cluster (states
  `4`, `8`-`12`), so this is likely a defensive fallback rather than a distinct timed death
  cause. Still open: no literal store ever sets `$c100` to `11`, so how/when the dispatcher
  actually enters this state wasn't found — would need a savestate shortly before this
  Game Over to trace live. See [Player Death and Game Over](Player-Death-and-Game-Over).
- **Quest type 3/4 (Orb/Fairy) objective addresses**: derived statically from the ROM bank 2
  header table, unlike quest types 1/2 which were confirmed live against the HUD. Needs
  savestates with an active Orb or Fairy quest to confirm the same way.
- **The actual code that writes the resolved quest target into `$c16b`/`$c16d`/`$c16e`/
  `$c170` at quest start**: searched further and ruled out one more false lead (a literal
  `$6e1c` operand in bank 0 that turned out to belong to a sound-engine routine with bank 4
  paged in, unrelated to the bank 2 quest table). Still not found - these four addresses are
  never written via a literal store anywhere in bank 0/1, only ever read (for HUD display).
  Must happen through a fully computed/indirect write not yet isolated. Needs a savestate
  right at quest start with a memory-write watchpoint on these four addresses.
- **A second, independent per-floor "bonus feature" system** (`$c271`-`$c27a`, distinct from
  the known `$c300` object table): found and structurally traced (see
  [Dungeon Mechanics](Dungeon-Mechanics) "A second, separate per-floor 'bonus feature'
  roll"), but what it actually controls in-game is unconfirmed - nothing reads
  `$c272`-`$c27a` back via a literal address. Needs a savestate at floor generation with
  `$c271`-`$c27a` and the bank 3 `$5655` per-quest/floor template dumped.
