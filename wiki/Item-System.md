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
depleting 32-slot pool - not independent rolls.

### Where the pool gets (re)filled

Found: two loader routines in bank 0, both copying a 32-byte template from bank 2 into
the live pool at `$c190`-`$c1af`:

- `Call_000_1240_LoadDefaultItemPool` loads one **fixed, quest-independent** template
  (bank 2, `$6750`: only items `$02`/`$03`/`$0a`/`$0d` - Dokukeshi/Fire/Toumei/Akari -
  weight 1 each, everything else zero). This is called immediately before
  `Call_001_5f2c_RollStartingInventory` - so **the starting "tree blessing" items always
  come from this one restricted pool, regardless of quest type or dungeon level.**
- `Call_000_1248_LoadQuestLevelItemPool` loads the **real per-quest/per-level** template
  instead. It's only called from inside `Call_001_75a8_RollWeightedItemType`'s own retry
  path, once the shared pool has been drawn down to nothing - so it's the pool that
  governs chest/floor-item rolls for the rest of the run, just not the very first roll.

The per-quest/level template is selected through a small nested table in bank 2:

```
$6d4e: 5 words - index 0 unused ($AAAA sentinel), indices 1-4 = quest types 1-4,
       each pointing to that quest's own per-level pointer list
  quest 1 -> $6d58 (10 levels)
  quest 2 -> $6d6c (10 levels)
  quest 3 -> $6d80 (10 levels)
  quest 4 -> $6d94 (9 levels - Fairy quest has one fewer dungeon level than the rest)
```

Each per-level pointer list holds one word per dungeon level, pointing to that level's
32-byte weight template; the templates themselves are packed back-to-back right after the
pointer tables (quest 1's at `$6770`, quest 2's at `$6870`, etc. - each exactly `$100`/256
bytes apart, i.e. 8 templates × 32 bytes). Across every quest, the **deepest 2-3 levels
all reuse the same final template** rather than getting a unique one each.

Sample weight entries actually present (index = item type ID, decoded live from the ROM):

```
default pool ($6750):        $02×1 $03×1 $0a×1 $0d×1
quest 1, level 1 ($6770):     $01×2 $02×2 $03×1 $06×1 $08×1 $10×1 $12×1
quest 1, level 4 ($67d0):     $01×2 $02×2 $03×2 $05×1 $06×1 $08×2 $09×2 $0a×1 $0c×1 $0d×2 $10×1 $12×1
quest 1, deepest ($6850):     $01×2 $02×2 $03×1 $04×2 $05×2 $06×1 $08×1 $09×2 $0a×2 $0c×2 $0d×2 $0e×1 $10×3 $11×1 $13×1
```

`$10`/`$11` (the confirmed gold-pile items) show up with increasing weight at deeper
levels, as expected. `$12` ("HP no Moto", +1 max HP - see "Confirmed item type IDs"
below) turns up with weight 1 in almost every quest/level template, so it should be a
common find at any depth.

A fourth routine, `Call_000_1267_LookupQuestLevelNibbleStat`, does the exact same
quest+level lookup but against a different table (bank 2, `$6da6`, right after the item
templates) and returns one packed nibble instead of copying 32 bytes - purpose not
identified yet.

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
runs the concrete effect - except it turns out this one only special-cases sword/shield
(`$18`-`$1f`), `$06`, and `$12`; everything else falls through to a shared "recount Orbs,
close the popup" cleanup and does nothing else *here*.

**The real per-item effect code lives elsewhere**: `Call_001_5190_ItemUseEffectDispatch`
(bank 1, `$5190`) reads the selected item type directly from the inventory slot, stashes
it in `$c514`, and jumps through an inline 32-entry table (one per item type `$01`-`$20`,
`rst RST_00` indexed by type-1) to the real effect code. See that routine's comment in
`src/bank_001.asm` for the full decoded address table. This is also what finally explains
an old open question from earlier in this project's history: the `$c125` state 7/8/9
"scan 4 directions for raw tile `$09`" chain, which repeated live-play tests could never
trigger through movement alone, turned out to be **item `$04`'s effect**, not a passive
mechanic - it's deliberately triggered by using that item, not by bumping a wall.

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
| `$14` | Scans the 4 adjacent tiles for raw terrain class `$22` (same "scan 4 directions" family as `$04` below) - strongly implies raw tile `$22` is the Fairy Cage itself. Static deduction only, not live-confirmed: also the item hardcoded into starting-inventory slot 2 on early quest-4 (Fairy) floors (see "Starting inventory" above), which only makes sense for a guaranteed early-game key | "Kagi" (fairy cage key) |
| `$18`-`$1b` | Sword, +1/+2/+3/+5 attack; item-screen name confirmed for `$18`: マホウノケン/Mahou no Ken | Mahou/Honoo/Inazuma/Densetsu no Ken |
| `$1c`-`$1f` | Shield, +1/+2/+3/+5 defense | Ki/Tetsu/Hagane/Densetsu no Tate |

## Partially understood - behavior known, exact name not pinned down

Traced via `Call_001_5190_ItemUseEffectDispatch` (see "Item-use flow" above), but not yet
matched to a specific StrategyWiki name/live-confirmed:

| ID | What the code does | Candidate(s) |
|---|---|---|
| `$04` | Scans the 4 adjacent tiles for raw terrain class `$09` (a plain wall) - this is the `$c125` state 7/8/9 chain mentioned above | Unclear - none of the remaining StrategyWiki names obviously mean "search for a wall", so this may need re-checking |
| `$05` | Stashes the player's own position, then enters the same `$c125`=8 "scan adjacent tiles" state `$04` uses | Possibly Ganseki (fill hole/rock barrier) |
| `$0c` | Same "stash own position, scan state 8" pattern as `$05` | Possibly Ganseki or Oriru |
| `$0e` | Stashes the player's own position, then examines *all 4* neighboring tiles at once (storing each one's raw class separately) rather than scanning for one match | Possibly Oriru (place stairs - needs to evaluate which adjacent tile is a valid floor) |
| `$08`, `$09`, `$0b` | Each scales a value by Lucky (`$c123`) and writes it into the same kind of bonus-table variable the sword/shield attack/defense bonus uses (`$c12e` and friends) - temporary combat buffs, structurally similar to the already-confirmed `$06` | Candidates: Change (weaken monsters), Mamori (temp. defense), Lucky (+1 Lucky) - not told apart from each other yet |
| `$13` | Enters the same generic "targeted effect" state (`$c125=21`, bank 1 `$4125`) that Fire (`$03`) also uses - selected there via `$c540` (Fire=`2`, this item=`3`). After a short delay (`$c542=$20` frames) it calls `Call_001_56d2` (bank 1 `$56d2`), which walks **all 36 monster slots** (`$c5c0`-`$c800`) and, for each occupied slot whose **type byte (offset `$01`) matches a reference value in `$c420`**, calls `Call_001_4b08` (bank 1 `$4b08`) on it - which writes the monster's position/type into `$c225`-`$c227`, looks up a per-room record via the same `$206b` room-link table the warp/secret-door code uses, and subtracts a per-class size/weight-tier constant (table at `$7915`, now resolved - see [Monster System](Monster-System) "A per-class 'size/weight tier' byte") from a counter at offset `$11` of that room record. Reads like "find every monster of a specific type on this floor and decrement a per-room/per-type counter for each" - plausibly a targeted repel/banish effect, but not confirmed live and not matched to a specific StrategyWiki name | Candidate: a type-targeted effect (not a simple damage spell, since no HP field is touched) |
| `$20` | The dispatch table entry (bank 1, index 31) points at `$5acd`, which turns out to be the tail byte of an unrelated, overlapping `jp` instruction from a *different*, smaller `rst RST_00` table a few bytes earlier (`$5ac5`) - the two tables' byte ranges legitimately overlap, same as any densely packed ROM; both decode correctly from their own respective entry points. Executed from `$5acd`, the single byte there is `inc [hl]` - and `hl` at that point still holds the address of **the item's own inventory slot** (set earlier in `Call_001_5190_ItemUseEffectDispatch` and never touched since, including by the `rst RST_00` trampoline, which explicitly restores the caller's original `hl` before jumping). So **using item `$20` increments its own slot value in place, turning it into item `$21`** - rather than being consumed outright. It then calls `Call_001_76ab` (bank 1 `$76ab`), which scans the current room's whole tile grid (8×10, via the same per-tile-check helper used by other "scan for a raw tile class" items) for a match, conditionally plays sound `$55` if one is found, and finally enters a *different* generic effect state (`$c125=19`) with a target position copied from `$c225`/`$c226` - looks like a "search the room for something, then show a visual effect at a found position" item that also upgrades itself on use. `$21` never otherwise appears as a valid item type anywhere else that's been traced, and `$20` itself never appears in any of the per-quest/level item-weight pool templates documented above - both consistent with this being a rare, specially-placed item rather than a normal floor/chest drop | Candidate: unclear - the self-upgrade mechanic doesn't obviously match Faigaa/Tobu/Gold; needs a savestate with this item in inventory to confirm live |

Still fully unidentified: Tobu (warp), Gold (no slot - but see `$10`/`$11` in
[Dungeon Mechanics](Dungeon-Mechanics) for the actual loose-gold-pile item types, which may
or may not be what the wiki calls "Gold"), and whichever of the above table's candidates
don't end up matching `$13`/`$20` either.

See [Open Questions](Open-Questions) for what a savestate would need to look like to confirm
each of these - mainly: get one of these item types into inventory, use it, and watch what
actually happens on screen (does a monster weaken, does a hole get filled, etc.) to match
behavior to name.
