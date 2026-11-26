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
| `$06` | Temporary attack buff, magnitude/duration scaled by Lucky | Likely "Kougeki" (temporary attack increase) |
| `$07` | Orb — counted toward Orb quest progress (`$c16c`) | "Orb" |
| `$12` | `wPlayerMaxHP += 1`, doesn't occupy a slot | "HP no Moto" (+1 max HP, doesn't occupy a slot) |
| `$18`-`$1b` | Sword, +1/+2/+3/+5 attack | Mahou/Honoo/Inazuma/Densetsu no Ken |
| `$1c`-`$1f` | Shield, +1/+2/+3/+5 defense | Ki/Tetsu/Hagane/Densetsu no Tate |

## Not yet identified

About 18 more item type IDs from the StrategyWiki list haven't been individually mapped to
a numeric ID yet: Kaifuku (heal), Dokukeshi (cure poison), Tobu (warp), Change (weaken
monsters), Mamori (temp. defense), Toumei (invisibility), Lucky (+1 Lucky, no slot), Oriru
(place stairs), Akari (remove darkness), Fire, Faigaa, Ganseki (fill hole/rock barrier),
Kagi (fairy cage key), Gold (no slot). Two structurally identical "scan all 4 directions for
a matching tile type" routines were found (bank 1, `$53a2` and `$572c`) that are plausibly
Ganseki and Oriru respectively, but not individually confirmed.

See [Open Questions](Open-Questions) for what a savestate would need to look like to confirm
each of these.
