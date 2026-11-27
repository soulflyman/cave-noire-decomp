# Item System

## Inventory

`wInventory` (`$c140`-`$c147`): 8 bytes, one per slot, value = item type ID, `$00` = empty
slot. Matches the StrategyWiki's "maximum eight items held" exactly.

Helper routines found in bank 1 (renamed with a descriptive suffix, comments only — no byte
changes):

- `Call_001_4e5a_CountInventoryItems` — counts occupied slots
- `Call_001_4e6a_CountInventoryItemsOfType` — counts slots holding a given item type (used
  e.g. with type `$07` to derive the Orb quest progress counter)
- `Call_001_4e7a_CompactInventory` — shifts occupied slots to the front, fills the rest with
  `$00`
- `Call_001_4e93_FindInventoryItemOfType` — linear search for a given item type
- `Call_001_4ea0_FindAnySword` — searches item types `$18`-`$1b`
- `Call_001_4eae_FindAnyShield` — searches item types `$1c`-`$1f`
- `Call_001_4ebc_ConsumeInventoryItem` — removes one item of a given type from inventory

## Starting inventory ("pray before the tree") and the shared floor item pool

Confirmed live (`save_010.state`): right before entering a dungeon, a screen shows a tree,
the player, and four boxes that reveal items one at a time. An external description of
the same screen calls it praying before the tree/forest god, which grants four starting
items alongside the sword - matches the save exactly (inventory already held `$01`/`$0a`/
`$03`/`$02` - heal potion, Toumei invisibility, Fire, Dokukeshi).

Traced to `Call_001_5f2c_RollStartingInventory` (bank 1, `$5f2c`), which fills
`wInventory` slots 1-4 (`$c140`-`$c143`):

- Slot 1 (`$c140`) is **always item `$01`** (heal potion) - not random.
- Slots 3/4 (`$c142`/`$c143`) are rolled via `Call_001_75a8_RollWeightedItemType`.
- Slot 2 (`$c141`) is rolled the same way, **except** on quest type `4` (Fairy), dungeon
  level `1`-`2` (`$c102` < 3), where it's hardcoded to item `$14` instead - a guaranteed
  item for early Fairy-quest floors.

`Call_001_75a8_RollWeightedItemType` draws from a **32-entry weighted item pool at
`$c190`-`$c1af`**, one byte per item type ID = that type's remaining weight/count for the
current floor. The pick (`Call_001_741f_PickFromWeightTable`) sums the whole table, rolls
one byte from the game's RNG (`Call_000_0456`), and walks the table subtracting each
entry's weight until it goes negative - the stopping index *is* the item type ID, classic
weighted-random-by-cumulative-weight. The chosen entry's weight is then decremented, so a
floor doesn't hand out unlimited duplicates of the same item; if the table sums to zero
(exhausted) or overflows a byte, the RNG is advanced and the whole roll retries.

**This is the same pool dungeon chests/floor item piles draw from** - `Call_001_75a8_
RollWeightedItemType` has four more call sites elsewhere in bank 1 besides the starting-
inventory one, all feeding picked items into chest/floor-drop code. So the four items you
start with and everything you find in that floor's chests all come out of one shared,
depleting 32-slot pool - not independent rolls. Not yet traced: what populates/refills
`$c190`-`$c1af` at floor generation time (presumably a per-quest-type table, still
unlocated).

## Equipment bonus tables

Found and documented as explicit data (bank 1, `$510a`/`$510e` — safe to convert since no
real jump targets land inside that byte range):

```
SwordAttackBonusByItemID   ($510a): 01 02 03 05   → item $18/$19/$1a/$1b: +1/+2/+3/+5 attack
ShieldDefenseBonusByItemID ($510e): 01 02 03 05   → item $1c/$1d/$1e/$1f: +1/+2/+3/+5 defense
```

This matches the StrategyWiki's sword/shield list exactly (Mahou/Honoo/Inazuma/Densetsu no
Ken = +1/+2/+3/+5 attack; Ki/Tetsu/Hagane/Densetsu no Tate = +1/+2/+3/+5 defense). Matches
the wiki's note that sword/shield bonuses don't stack — there's exactly one bonus slot per
category (`$c12d`/`$c12e` for attack, `$c12f`/`$c130` for defense).

## Item-use flow

Opening the item screen and selecting a slot (`bank_000.asm`, around `$36e0`) does, in
order:

1. Compact the inventory
2. Count items to resolve the selected cursor position to a slot index
3. Read that slot's item type ID
4. Write it to `$c516` (the staging variable the effect dispatcher reads)
5. **Clear the slot immediately** — the item is consumed on selection, not after the effect
   resolves

The generic effect dispatcher (bank 1, roughly `$50ac`-`$5326`, branching on `$c516`) then
runs the concrete effect.

## Confirmed item type IDs

| ID | Effect | StrategyWiki match |
|---|---|---|
| `$01` | Heal (item-screen name confirmed: カイフク/Kaifuku) | "Kaifuku" |
| `$02` | Cure poison (item-screen name confirmed: ドクケシ/Dokukeshi) | "Dokukeshi" |
| `$03` | Fire damage/effect (item-screen name confirmed: ファイヤー/Faiyaa) | "Fire" |
| `$06` | Temporary attack buff, magnitude/duration scaled by Lucky | Likely "Kougeki" (temporary attack increase) |
| `$07` | Orb — counted toward Orb quest progress (`$c16c`); item-screen name confirmed オーブ/Oobu | "Orb" |
| `$0a` | Invisibility (item-screen name confirmed: トウメイ/Toumei) | "Toumei" |
| `$0d` | Light up the current room (item-screen name confirmed: アカリ/Akari). Confirmed live: using it clears the inventory slot and immediately redraws a larger chunk of the dark tilemap (dark `$5f` tile count dropped from 204 to 136 in one use on a real dark-floor savestate) - a one-shot "reveal more of this room" effect, not a lasting light radius. Monsters within the newly-lit area are **still** shown only as the eye-pair sprite until actually approached - the Akari reveal and the "monster visible" reveal are separate systems. | "Akari" |
| `$12` | `wPlayerMaxHP += 1`, doesn't occupy a slot | "HP no Moto" (+1 max HP, doesn't occupy a slot) |
| `$18`-`$1b` | Sword, +1/+2/+3/+5 attack; item-screen name confirmed for `$18`: マホウノケン/Mahou no Ken | Mahou/Honoo/Inazuma/Densetsu no Ken |
| `$1c`-`$1f` | Shield, +1/+2/+3/+5 defense | Ki/Tetsu/Hagane/Densetsu no Tate |

## Not yet identified

About 9 more item type IDs from the StrategyWiki list haven't been individually mapped to a
numeric ID yet: Tobu (warp), Change (weaken monsters), Mamori (temp. defense), Lucky
(+1 Lucky, no slot), Oriru (place stairs), Faigaa, Ganseki (fill hole/rock barrier), Kagi
(fairy cage key - `$0d` in `save_001.state`/`save_003.state` both turned out to be Akari,
not Kagi, so this one's ID is still unconfirmed), Gold (no slot, but see `$10`/`$11` in
[Dungeon Mechanics](Dungeon-Mechanics) for the actual loose-gold-pile item types, which may
or may not be what the wiki calls "Gold"). Two structurally identical "scan all 4 directions
for a matching tile type" routines were found (bank 1, `$53a2` and `$572c`) that are
plausibly Ganseki and Oriru respectively, but not individually confirmed.

See [Open Questions](Open-Questions) for what a savestate would need to look like to confirm
each of these.
