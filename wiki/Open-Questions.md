# Open Questions

Things that are either unconfirmed (plausible from static analysis only) or not found at
all, each with the kind of savestate/game state that would help close the gap. If you have
PyBoy savestates matching any of these, or know how to reach them quickly, this is the
fastest way to contribute.

## Dungeon mechanics ([Dungeon Mechanics](Dungeon-Mechanics))

- **Darkness/torch mechanic**: visibility radius, "revealed tile" bitmap, the dither tile
  graphic, the eyes-only monster sprite. Needs a savestate **several floors deep** (per
  community info, darkness only starts on deeper floors) in a room with active darkness.
- **"!!" floor-crack warning icon**: plausible code match, not dynamically triggered. Needs
  a savestate on/next to an actually-cracking floor tile (tile ID `$1d` or `$23` ahead of
  the player).
- **"?" secret-wall warning icon**: same situation, needs a tile ID `$09` adjacent to the
  player.
- **Hole-jump icon**: needs a savestate directly facing a hole (tile ID `$0f` ahead).
- **Warp mechanic**: the `$c427`/`$c428` address-pair hypothesis is plausible but completely
  untested. Needs a savestate on/next to an actual warp tile.
- **Lava**: no tile class identified at all. Needs a savestate in a room with lava tiles
  (per the wiki, likely near Salamander spawns).
- **Door** (dungeon exit): no tile class identified. Needs a savestate right after
  completing the quest objective, standing at the exit.
- **Fairy Cage**: not investigated at all. Needs a savestate in a Fairy quest with a visible
  cage and the key item in inventory.
- **Ganseki item effect** (fill hole/rock barrier): needs a savestate with the Ganseki item
  in inventory, standing next to a hole.
- **Oriru item effect** (place stairs on adjacent tile): needs a savestate with the Oriru
  item in inventory.
- **The "real" two-phase treasure chest** (open with A, item drops visibly on the tile, walk
  onto it and press A again to actually collect it): confirmed this is **not** what the
  `$d500` tile-overlay/`jr_000_36e0` mechanism does (that one is a single A-press, and for
  item type `$10` doesn't even go to the inventory — see [Dungeon Mechanics](Dungeon-Mechanics)).
  Needs a savestate standing right in front of a still-closed, visually distinct chest.

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
