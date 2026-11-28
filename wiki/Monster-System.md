# Monster System

## The monster array

Monsters live in a flat array at `$c5c0`-`$c800`: **16 bytes per entry, up to 36 slots**
(`$24 × $10`). Confirmed via the periodic animation-update loop (fires every 16 ticks) and
the slot-reset loop (`ld hl,$c5c0; ld b,$24; ld de,$0010`).

## Struct layout

| Offset | Meaning | Confidence |
|---|---|---|
| `$00` | **The "class" index** — doubles as "occupied" (`0` = empty slot) and as the direct index into the per-class stat table (see "The stat table, found" below). Not a species/type ID by itself; several different monster *types* can plausibly share one class entry if their base stats match. | **Confirmed** — see below |
| `$01` | Monster type ID | Confirmed (compared directly against `$c420`, the type currently being processed by the per-turn dispatch loop) |
| `$02` | Row (Y) position | Confirmed via OAM sprite position cross-check |
| `$03` | Column (X) position | Confirmed via OAM sprite position cross-check |
| `$04` | Blink/animation toggle — XOR'd with offset `$05` every 16 ticks, starts at whatever the class table says (usually `0`, but not always). **Not** a position or combat field (don't confuse with `$0f`, which has a similar 0/2-oscillation look but is the real direction/RNG field) | Confirmed |
| `$05`, `$07`, `$08` | Static per-class attributes, copied from the stat table at spawn - likely attack/defense/lucky-like stats, not yet told apart from each other | Confirmed to come from the stat table; individual meaning still open |
| `$06` | **Current HP.** Decreases with each hit taken; when it reaches 0, the entire slot is zeroed (including offset `$00`) | **Confirmed** — see below |
| `$09` | Copied from the stat table at spawn, **but not generally equal to `$06`/current HP** - see "The stat table, found" below. The old assumption that this is always "max HP, equal to starting HP" only happened to hold for the one Crab fight tested so far; most class records show a different value here. Possibly a different static stat (attack?) rather than max HP. | Revised — spawn-time source confirmed, semantic meaning still open |
| `$0f` | 2-3 bit direction/state field, doubles as the pseudo-RNG source — see [Combat System](Combat-System) | Confirmed |

## The stat table, found (pure static analysis)

Traced the full spawn path for a new monster slot:

1. `Call_001_4abe` (bank 1, `$4abe`) finds the first empty slot in the `$c5c0` array.
2. `Jump_001_4a7f` (bank 1, `$4a7f`) zeroes the whole 16-byte slot, then fills offsets
   `$00`-`$03` from staging variables `$c224`/`$c227`/`$c225`/`$c226` (class index/type
   ID/row/col).
3. `Call_000_1142_LoadMonsterClassStats` (bank 0, `$1142`) copies a **6-byte record** from
   a table at (bank 2) `$5ea2`, indexed by that same class value (`$c224`), into struct
   offsets `$04`-`$09` in one shot.

So offset `$00` isn't a separate "occupied flag plus mystery tag" at all — it's literally
**the index into this stat table**, and the table is what the whole monster-system
investigation had been missing. Decoded directly from ROM (class index -> `[$04, $05,
$06, $07, $08, $09]`):

```
class  0: [ 0,  0,  0,  8,  0,  2]      class  1: [ 0,  0,  0,  8,  0,  2]
class  2: [ 0,  2,  9,  5,  6,  4]      class  3: [ 0,  1,  6,  4,  4,  3]
class  4: [ 0,  1,  5,  4,  2,  3]      class  5: [ 0,  2,  8,  5,  2,  4]
class  6: [ 0,  2,  5,  4,  2,  5]      class  7: [ 0,  1,  6,  4,  4,  3]
class  8: [ 0,  1,  4,  3,  2,  3]      class  9: [16,  2, 18,  6,  6,  6]
class 10: [ 0,  1,  5,  4,  2,  3]      class 11: [ 8,  2, 18,  6,  6,  6]
class 12: [24,  1, 32,  9,  5, 16]      class 13: [ 8,  1, 19,  7,  5,  7]
class 14: [24,  2, 23,  7,  6,  7]      class 15: [24,  2, 32, 16,  5, 16]
class 16: [28,  2, 32, 16,  5, 16]      class 17: [28,  2, 23,  8,  6,  7]
class 18: [16,  1,  8,  6,  2,  5]      class 19: [ 0,  1,  7,  4,  2,  3]
class 20: [ 0,  2, 20,  7,  6,  7]      class 21: [ 0,  1,  5,  3,  2,  2]
class 22: [ 0,  1,  4,  3,  2,  1]      class 23: [ 0,  1,  1,  0,  1,153]
class 24: [ 5,  2,  1,  5,  1,153]      class 25: [ 6,  0,  7,  4,  2,  4]
class 26: [16,  2, 18,  5,  6,  4]      class 27: [24,  2, 24,  8,  6,  8]
class 28: [24,  2,  5, 12,  9,  2]      class 29: [ 0, 29, 10,  8, 17,  0]
class 30: [ 8, 17, 17, 18,  6,  5]      class 31: [25, 16, 13,  0,  0, 16]
```

Important: `$09` (the 6th value) is **not** generally equal to `$06` (3rd value, "current
HP") — e.g. class 3 is `[0, 1, 6, 4, 4, 3]`, HP 6 but `$09`=3. This directly contradicts
the old "offset `$09` = max HP, same as starting HP" assumption, confirming the doubts
raised earlier from live monster-array dumps. It only looked that way for the one
confirmed Crab fight. Whether `$09` is a different static stat (attack power is the
leading guess) or whether spawned values get scaled by dungeon depth before use (which
could reconcile things) is not confirmed either way.

**Searched for a dedicated reader of offset `$09` and found none.** Every place in bank 0/1
that indexes into the `$c5c0` monster array individually (rather than through the bulk
6-byte stat copy at spawn) was checked for a literal offset-`9` access
(`ld a, $09` immediately followed by `rst RST_28`, the project's standard struct-offset
idiom): none exist. The confirmed player/monster damage formula
(`Call_001_5c47`/`Call_001_5c75`, bank 1 `$5c47`/`$5c75`) only ever reads struct offsets `$03`
and `$06`, never `$09`. So either `$09` is read through a path not yet located (a generic
loop over offsets `$04`-`$09` wouldn't show up as a literal `$09` the way this search
assumes), or it's effectively write-only in the traced code - set at spawn and never
consumed. Still open; a live combat test remains the most promising way to actually observe
its effect, if any.

This also resolves the earlier "non-monster entries" doubt: cross-checking every class
value seen live (`4`, `3`, `19`, `5`, `18`) against this table byte-for-byte (offsets
`$05`-`$09`; offset `$04` is the runtime blink toggle and legitimately varies) confirms
an **exact match in every case**, including classes `18`/`19`/`22`. These are ordinary
monster classes, not a separate decoration system - the "no OAM/movement observed" cases
were just short capture windows, not a different mechanism.

The multi-tile ("big", 4-OAM) monster seen in save_009 is **class 18**
(`[16, 1, 8, 6, 2, 5]`), confirmed by exact byte match against its live struct. Its
offset `$04` = `16` (vs. `0` for every small-monster class) is simply that class's table
value, not evidence of a different struct layout - the 16-byte struct is the same for
every class. Whatever offset `$04` is "supposed to be" at rest clearly isn't always `0`;
it still gets XOR'd with offset `$05` for the blink animation on top of that base value.

## A per-class "size/weight tier" byte at `$7915` (bank 1)

A 32-entry table at bank 1 `$7915`, indexed directly by class (not type), decoded from the
ROM:

```
class  0- 7: 0, 0, 2, 2, 2, 2, 2, 2
class  8-15: 2, 4, 2, 4, 8, 4, 8, 8
class 16-23: 8, 8, 4, 2, 2, 2, 2, 2
class 24-31: 2, 4, 8, 0, 1, 1, 1
```

Every value is `0`, `1`, `2`, `4`, or `8` - a small power-of-2 set, the classic shape of a
size/weight *tier* rather than an arbitrary stat. It's read in two unrelated places:

- `Jump_000_3960` (bank 0 `$3960`): looks up this table for a monster's class and, if the
  result is nonzero, runs extra animation handling (`Call_000_399c`) - consistent with
  "bigger/heavier monsters get an extra rendering step" (the multi-tile class-18 monster
  from `save_009` fits: table value `4`, nonzero).
- Item `$13`'s effect (`Call_001_4b08`, see [Item System](Item-System)): subtracts this
  per-class value from a per-room counter for every matching monster found - i.e. the
  effect's "cost" or "impact" per monster scales with this same size/weight tier.

Both uses make sense for the same underlying quantity (StrategyWiki's kill list literally
shows each monster's weight/height), so this table is most likely a **per-class size or
weight category**, reused by both an animation-gating check and an item-effect scaling
factor - not confirmed with a specific unit, but no longer an unexplained mystery table.

## Type -> class resolution (found)

There is **no single static "type ID -> class index" ROM table**. Traced the chain that
actually produces the class value (`$c224`) at spawn:

1. `Call_001_4997` (bank 1, `$4997`) iterates the 9 slots of the shared per-floor
   placement table at `$c300` (32-byte stride, same table the item-placement loop
   reads). Each slot's first byte, if nonzero, is a monster type ID, passed to
   `Call_001_49ad`.
2. `Call_001_49ad` (bank 1, `$49ad`) stages it as `$c201` and calls `Call_000_135d`
   (bank 0, `$135d`), which does two nested lookups:
   - `[$c202]` indexes a word table at (bank 3) `$6a75` to find a per-quest/floor
     4-byte header, copied to `$c441`.
   - `[$c201]` (the type) indexes a WRAM table at `$c448` to pick a bucket `0`-`7`,
     which then selects one of 8 four-byte sub-records out of `$c441`, copied to
     `$c445`.
3. `Call_001_49d0` reads `$c445[$c220]` (one byte per compass direction) into `c`, then
   calls `Call_001_4a48` with `b = [$c201]` (type) still carried along.
4. `Call_001_4a48` writes `c` into `$c224` (class) and `b` into `$c227` (type) - two
   independent fields from the *same* per-quest/floor encounter descriptor, not one
   derived from the other.

So type and class are both supplied directly by the room/quest's own encounter data
(itself a ROM template copied into WRAM per floor, the same architecture as the item
pool's quest/level templates - see [Item System](Item-System)), rather than one being
looked up from the other via a dedicated mapping table. `$c448` is itself WRAM, so it's
presumably refilled per floor too; tracing its exact population wasn't needed to settle
the original question since the final class values already verify byte-for-byte against
every live capture (see above).

## How the HP field was confirmed

Two independent live fights against monster type `$01` (PyBoy, real HP, no cheats —
see below for why a naive invincibility hack doesn't work here):

```
gold_dungeon.state, type $01, pre-fight: offset $06 = 5, offset $09 = 5
  Hit 1 (player → monster): offset $06  5 → 3   (damage 2)
  Counter-hit (monster → player): wPlayerHP 0x10 → 0x08  (damage 2)
  Hit 2: offset $06  3 → 0, offset $00 (slot flag) 6 → 0  (monster defeated)

combat2.state, type $01, pre-fight: offset $06 = 5, offset $09 = 5
  Hit 1: offset $06  5 → 2   (damage 3)
  Counter-hit: wPlayerHP 0x10 → 0x06  (damage 4)
  Hit 2: offset $06  2 → 1   (damage 1)
  Counter-hit: wPlayerHP 0x06 → 0x04  (damage 2)
  Hit 3: offset $06  1 → 0, offset $00 6 → 0  (monster defeated)
```

**A pitfall worth documenting:** setting `wPlayerHP` to an artificially huge value
(`0x99`) for invincibility works fine for pure movement exploration, but once a combat
animation starts it triggers a glitch that continuously drains HP every tick (likely a
health-bar-fill animation that never reaches its target because the starting value is far
above `wPlayerMaxHP`). Combat tests need to use real, in-range HP values.

## Movement patterns

Monster type `$01` was observed moving **only horizontally** (column oscillates, row stays
fixed) across multiple independent test runs. Combined with its HP of 5, this matches the
StrategyWiki monster table exactly:

> **Crab**: HP 5, moves left and right

High confidence: **monster type `$01` = Crab**, confirmed to use stat **class `6`**
(`[0, 2, 5, 4, 2, 5]`) - the only class whose `$05`-`$09` tuple matches the two live
combat logs above exactly.

## More types identified (savestates from a second BDM play session)

- **Monster type `$03` = Tarantula.** HP `6` (offset `$06`), matching the StrategyWiki entry
  exactly, and matching stat **class `3`** (`[0, 1, 6, 4, 4, 3]`) byte-for-byte. Movement,
  tracked over 40 player turns with no fighting: a large loop tracing almost the entire
  perimeter of the room, never settling - matches "moves counterclockwise around room" far
  better than Minotaur's small 4-square loop. Seen consistently across two independent
  savestates.
- **Monster type `$02` = stationary "boulder"-looking monster, not Minotaur.** HP `5`
  (offset `$06`), matching stat **class `4`** (`[0, 1, 5, 4, 2, 3]`) byte-for-byte, and
  confirmed to **never move**, even across 70+ player turns including several turns spent
  standing directly adjacent to it. This rules out Minotaur (which StrategyWiki documents
  as moving, just in a small loop). Both `5`-HP non-moving StrategyWiki entries are
  candidates - **Barokusu** or **Bukirika** - and the round, dark, "mole"/"boulder"-like
  look of the sprite leans towards one of those two rather than anything humanoid. Not yet
  disambiguated between the two.
- A third creature in the same savestate used **class `19`** (`[0, 1, 7, 4, 2, 3]`, HP `7`)
  - a plausible candidate for the real, moving Minotaur (distinct HP from both Crab and the
    boulder monster), but its type ID/movement weren't captured separately - needs a
    dedicated savestate to confirm.
- **Unresolved conflict - a second, distinct `$01`-type creature:** two further savestates
  each contained an entry with offset `$01` = `1` (same type byte as Crab) but a completely
  different stat block (`$06`=`8` HP instead of Crab's `5`, offset `$07`=`5` instead of `4`)
  and no horizontal-only movement observed. Either this is a stronger per-floor variant that
  still shares Crab's type ID, or offset `$01` doesn't cleanly mean "species" for every entry
  the way the single confirmed Crab test suggested. Needs a real combat test (HP-decrease
  tracking, same method used to confirm Crab) to resolve.
- **Multi-tile ("big") monsters exist and use more OAM sprites.** A two-tile-wide,
  visually two-headed monster (user-reported, matches a **Hydra** guess) was found rendered
  via 4 OAM sprite entries instead of the usual 2 for small monsters. Its monster-array entry
  had an unusual value at offset `$04` (`16`, vs. `0` on every small-monster entry seen so
  far) - multi-tile monsters likely use a modified/extended struct layout that hasn't been
  mapped yet. HP field didn't cleanly match any StrategyWiki entry, so the species guess
  is unconfirmed.
- **Non-monster entries in the same array, confirmed again:** several slots had wildly
  different offset `$00` values (`19`, `22`) with no matching OAM sprite and zero movement
  under any condition - these are not monsters at all, just other room objects reusing the
  same 16-byte array slots. Purpose not identified. **Update:** traced the movement/monster-
  collision-avoidance code (bank 0 `Call_000_3d8f`, bank 1 `$57bb`/`Call_001_57db`, found
  while investigating a movement-blocking puzzle - see
  [Dungeon Mechanics](Dungeon-Mechanics) "Movement collision, partially traced") and found
  it explicitly special-cases these two class values when deciding whether an occupied
  array slot blocks movement into its cell: **class `18`'s occupant never blocks** (always
  treated as passable), and **class `19`'s occupant only blocks if struct offset `$05` is
  nonzero** (passable when `$05==0`). This is strong, code-level confirmation that classes
  `18`/`19` are non-monster "object" entries in this array specifically meant to be
  walkable-through under some condition, rather than real monsters - though what each one
  visually represents (trap, decoration, inert prop) still isn't identified.

## What's still open

- **What offset `$09` actually is**, given it's confirmed to not just duplicate current
  HP - needs a live combat test on a monster whose class record has `$09` clearly
  different from `$06`, to see if it's attack power, defense, or something else.
- Whether `$02` (the stationary "boulder" monster) = Barokusu or Bukirika (both HP 5,
  both non-moving) — need a clearer sprite reference or a savestate with both present.
- The `$01`-type HP-8 variant vs. the confirmed HP-5 Crab — needs a live combat test
  (Crab's confirmed class is `6`, HP `5` - the HP-8 variant should be a different class;
  check which one at spawn time).

See [Open Questions](Open-Questions) for what kind of savestate would help close these gaps.
