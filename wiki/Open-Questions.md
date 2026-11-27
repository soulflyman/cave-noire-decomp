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
- **"?" secret-wall warning icon**: still not dynamically triggered. Needs a savestate with
  a tile ID `$09` adjacent to the player (unconfirmed whether this hypothesis is even
  right, given the hole-jump one wasn't).
- ~~**Warp mechanic**~~ — confirmed exactly as hypothesized: `$c427`/`$c428` are a warp
  pair's two room-index endpoints, and stepping onto the tile + pressing A teleports to
  whichever endpoint isn't the current room, same floor, different room. See
  [Dungeon Mechanics](Dungeon-Mechanics).
- **Lava**: no tile class identified at all. Needs a savestate in a room with lava tiles
  (per the wiki, likely near Salamander spawns).
- ~~**Door** (dungeon exit)~~ — confirmed: approaching it and pressing A sets `$c100=12`,
  triggering a fade + corridor-run animation and a results screen with a looping
  per-monster kill list (name/weight/height). Still open: the exact input to dismiss the
  results screen (nothing tried advanced past it), and the exact trigger condition for
  the exit tile itself (looked like a generic wall tile class, so likely a hardcoded
  coordinate check rather than a tile-class entry). See
  [Dungeon Mechanics](Dungeon-Mechanics).
- **Fairy Cage**: not investigated at all. Needs a savestate in a Fairy quest with a visible
  cage and the key item in inventory.
- **Ganseki item effect** (fill hole/rock barrier): needs a savestate with the Ganseki item
  in inventory, standing next to a hole.
- **Oriru item effect** (place stairs on adjacent tile): needs a savestate with the Oriru
  item in inventory.
- ~~**The "real" two-phase treasure chest**~~ — resolved: it's the same `$d500`
  tile-overlay mechanism after all, the bit 7 meaning was just initially read backwards.
  Bit 7 set = still-closed chest (select with direction + A opens it, revealing the item
  without collecting it); bit 7 clear = item lying exposed (walk onto it + A collects it).
  Gold-pile item types `$10`/`$11` skip the closed-chest step and are found already
  exposed. See [Dungeon Mechanics](Dungeon-Mechanics).

## Monster system ([Monster System](Monster-System))

- **Monster type → stats table**: only type `$01` (Crab) has been confirmed via real
  combat. The other 22 StrategyWiki monster types each need a savestate with a visible,
  undamaged specimen (to read struct offsets `$06`/`$09`) and a few turns of observation (to
  confirm movement pattern).
- **Struct offsets `$05`/`$07`/`$08`** (always `2`/`4`/`2` for Crab so far): need at least
  one more monster type to tell whether these are per-type attack/defense/lucky-like
  attributes or constants across all types.
- **Offset `$00`'s value** (always `6` for a living monster so far): needs a different
  monster type to check whether this varies.

## Item system ([Item System](Item-System))

- **~18 unidentified item type IDs**: Kaifuku, Dokukeshi, Tobu, Change, Mamori, Toumei,
  Lucky, Oriru, Akari, Fire, Faigaa, Ganseki, Kagi, Gold. For each: a savestate with that
  specific item in inventory (`wInventory`, `$c140`-`$c147`), then use it and watch the
  `$c516`/effect-dispatcher jump.
- **Sword/shield bonus actually applied in combat**: the bonus tables themselves are
  confirmed from ROM bytes, but applying one and then fighting with it hasn't been tested
  live. Needs a savestate with a sword or shield in inventory, followed by a combat test.

## Loose ends

- **Stairs missing in the Monster-quest test room (quest 1, level 1)**: fully mapped, no
  stairs found anywhere in the room. Unclear if that's specific to this room or general for
  this quest type/level. Needs a savestate of quest 1 at a higher level to compare.
- **Secret passages in the same test room**: searched, not found — possibly the same
  room-specific anomaly. Worth retrying in a different dungeon/quest type.
- **Ambiguous labels in `bank_002.asm`** (`jr_002_6e0d`, `jr_002_6e39`): these sit inside
  what's otherwise clearly the quest-objective data table (`$6e00`-`$6e37`), and might be
  real reachable code or pure disassembly artifacts. A PyBoy hook on both addresses during
  an actual quest start (tried for all 4 quest types) would settle it either way.
- **Game Over trigger #3** (`$0d4c`, gated by a `$c149` countdown in an unidentified game
  state): needs a savestate shortly before this specific kind of Game Over to trace which
  state it belongs to.
- **Quest type 3/4 (Orb/Fairy) objective addresses**: derived statically from the ROM bank 2
  header table, unlike quest types 1/2 which were confirmed live against the HUD. Needs
  savestates with an active Orb or Fairy quest to confirm the same way.
