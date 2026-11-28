# Dungeon Mechanics

## The tile-class dispatcher

After every player move, `Call_000_2ef1` (bank 0) resolves the tile ahead into a "tile
class" (`$c241 and $7f`), and a dispatcher in the movement-execution code (around `$3698`,
bank 0) sets the main state machine (`$c126`) based on it:

| Tile class | Result | Mechanic | Confidence |
|---|---|---|---|
| `$08` | Calls `$5d40` (quest-type table), then transitions state | **Stairs** | Confirmed (reuses the already-verified floor-depth routine) |
| `$0a` | Jumps into the item-pickup code | **Item/chest pickup** | Confirmed (see [Item System](Item-System) and chest flow below) |
| `$0b` | Calls `$408a` | **Warp** (see below) | Plausible, not dynamically tested |
| `$07` | Sets state `3` | Unidentified | Open |
| anything else | Sets state `4` | Normal walkable floor | — |

## Chest/item pickup flow

Live play (Beaten Dying Moon emulator) described a three-step interaction for chests (walk
adjacent, press direction again to select - shown as blinking corner markers -, A to open,
then walk onto the dropped item and press A again to collect it), structurally similar to
the attack-targeting flow in [Combat System](Combat-System). Tracing one specific instance
in the disassembly, confirmed with PyBoy (see [Building the ROM](Building-the-ROM) for the
method, [Open Questions](Open-Questions) for what's still unresolved), told a more nuanced
story:

The `$d500` array doubles as both "chest/item overlay" and the bit that actually
distinguishes an unopened chest from an exposed item - and that bit's meaning was initially
misread backwards before a real closed-chest savestate (two Orb tiles, not gold/traps,
provided by the user) made it possible to confirm it properly:

- **Bit 7 set** on a `$d500` cell = a **still-closed chest** at that position. Walking
  adjacent to it and then pressing the direction again (same blinking-corner target
  selection as picking a monster in combat, `$c125` state `6`,
  `Call_000_3c4f_TrySelectDirection` / `Call_000_35ef_CheckClosedChestAhead`) selects it as
  the target. Pressing **A** then runs `Jump_001_4f3d_OpenChestRevealItem`, which clears
  bit 7 on the cell (e.g. `$87` → `$07`) and redraws the tile graphic - **this does not add
  anything to the inventory**, it only reveals the item lying on the tile.
- **Bit 7 clear** = an item now lying exposed and walkable (tile class `$0a`). This tile
  does *not* block movement - you can walk right onto it. Pressing **A** while standing on
  it calls `jr_000_36e0`, which for "normal" item type IDs adds the item straight to the
  inventory (compacts the inventory, finds a free slot, copies the item byte, clears the
  cell). For item type IDs `$10`/`$11` specifically, it instead branches to `jr_000_371a` →
  `Call_001_50df_RollGoldAmount` (rolls an amount into `$c515`, scaled by current floor for
  `$10`, by Lucky otherwise) → `Jump_000_351a_EnterGoldPickupPopup` →
  `Jump_001_5003_ShowGoldPickup`, which opens a popup window and adds that amount straight
  to `$c128` (`wGoldCollected`) instead of the inventory - i.e. **`$10`/`$11` are loose gold
  piles that skip the "closed chest" state entirely** and are found already exposed.

Confirmed dynamically end-to-end on a real chest: before interacting, `$d500` cell = `$87`
(item type `7` = Orb, bit 7 set). After selecting + opening (one A press), cell = `$07`,
inventory unchanged. After walking onto the tile and pressing A again, the item lands in a
free inventory slot and the cell clears to `0`. This exactly matches the two-phase
open-then-collect flow described from live play - the earlier conclusion on this page (that
`$d500`/`jr_000_36e0` was a single-A-press mechanism with no two-phase chest) only held for
the gold-pile item types, which really do skip the closed-chest step.

### No real "dungeon seed" exists, but the RNG state is directly reproducible

While investigating this, it turned out the game has no dedicated "dungeon generation seed"
value a player could note down. All randomness flows through one 16-bit LCG state
(`$c011`/`$c012`, see [Combat System](Combat-System) for the formula) that is **never**
explicitly seeded with real entropy anywhere in the ROM (no boot-time write found in any
bank) - its drift comes entirely from how many times it's been called by the time you enter
a dungeon, which in practice means "how the player navigated the menus."

The useful consequence: since it's just two bytes, poking `$c011`/`$c012` directly in PyBoy
before entering a dungeon reproduces a run deterministically, without needing a real
player-captured savestate. Tested by forcing a Gold quest (`$c101=2`) on top of an existing
item-loadout savestate and sweeping many seed values: every seed produced an item at the
same `$d500` offset, with only the spawn position varying - suggesting level 1 has a single
fixed room template for this quest type (item placement fixed, only spawn point randomized),
though this hasn't been checked across other quest/level combinations.

## Warp

Tile class `$0b` leads into `Call_001_408a_WarpToOtherRoom`, which reads an address pair,
`$c427`/`$c428` — the two *room-index* endpoints of a warp pair (`$c500` is the current room
index within the floor, a separate concept from `$c503`/`$c504`, the in-room tile
row/column). It compares the current room index against `$c427`, and picks `$c428` as the
destination if they match, `$c427` otherwise ("teleport to whichever end isn't the current
one") - resolving that destination room via a word-table lookup at `$206b` and staging new
in-room coordinates into `$c50b`/`$c50c`. `Jump_001_40de_FinalizeWarp` then actually commits
the staged room index + coordinates into `$c500`-`$c504` and redraws the view.

**Confirmed live** on a real warp tile (stand on it, press A - exactly as described from
play): `$c427`/`$c428` were `(1, 2)`; starting in room `1`, the code picked room `2`, and
the player's position jumped instantly from `(5,7)` to `(1,2)`, landing in a visually
distinct, separately-dark room with its own warp tile - while the floor number (`$c104`)
stayed the same throughout. Matches the description exactly: warps always stay on the same
floor but move between rooms.

## Floor warning icons

The StrategyWiki describes three floor-hazard indicators that appear above the player:

> "!!" above the character — the ground is cracking and will break next turn
> "?" above the character next to a wall — that wall (or a nearby one) can be broken
> a jumping-person icon facing a hole — you can jump across without falling

Three structurally similar routines were found that match this description closely:

| Routine | Trigger | Icon tile | Hypothesis |
|---|---|---|---|
| `Call_000_2f3f` → `Jump_000_3323` | Random check (`Call_000_3e08`) + tile ID match (`$1d`/`$23`) | `$5a` | "!!" floor crack warning |
| `Call_000_2f48` → `Jump_000_3327` | Random check + tile ID match (`$09`), scanned across all 4 directions | `$42` | Hypothesized as the "?" secret wall warning - **not confirmed; the real reveal mechanism is a completely different routine, see below** |
| `Call_000_3772` → `Jump_000_332b` | Deterministic tile check (`== $0f`), no randomness | `$56` | Hypothesized as a hole-jump icon - **not confirmed, likely wrong** (see below) |

All three converge on shared drawing code (`jr_000_332d`) that writes a small 2-tile sprite
to the OAM shadow buffer above the player.

**The hole/crack-jump mechanic, confirmed live** (a savestate standing right next to a
crack tile, described from play as "a hole you can jump across by double-tapping the
direction you're facing"): the `Call_000_3772`/`$0f` hypothesis turned out to be a dead end
- an exhaustive scan of the entire reachable room (decoded properly, see the room-layout
address formula below) found zero cells with raw value `$0f`. The tile the player was
standing next to instead had raw value `$1d` (29) - the **same raw tile ID that
`Call_000_2f3f`/`Jump_000_3323` checks for** (the "!!" floor crack warning). Standing on it
normally is completely harmless (confirmed over 100+ idle frames, no HP loss, no delayed
effect) - the hazard described by the community as "a hole" and the game's "!!" crack
warning are the same tile.

The jump itself: a *slow* single press onto this tile just walks onto it normally (one tile
of movement). A *fast* double-press of the same direction (press, ~4 frames, release, ~2
frames, press again, ~4 frames, release) instead moves the player **two tiles in one go**,
completely skipping the crack tile and landing safely beyond it - exactly as described.
HP unaffected either way in testing. The exact code path that detects the fast repeat-press
and triggers the 2-tile jump (as opposed to the normal 1-tile movement commit) wasn't
isolated in this session - a RAM diff between the slow and fast sequences didn't surface an
obviously distinct "double-tap counter" address.

### Decoding the room layout (useful for any future tile-geometry work)

Room data lives in a WRAM buffer, resolved via a word-table lookup at ROM address `$2047`
(mirroring `Call_000_2dfe`/`jr_000_2e0a`, called from `Call_000_2ef1`):

```
RoomBase = word[$2047 + 2 * $c500]     ; $c500 = current room index
addr     = RoomBase + 2*swap_nibble(row) + col
```

where `row`/`col` are `$c503`/`$c504`. Verified against a live sample: for `$c500=2`
(`RoomBase=$c80a`), player at (row 4, col 1) resolved to exactly `$c88b`, matching the
address independently observed via a `Call_000_3772` register hook. This lets the entire
current room be reconstructed as a clean grid directly from a savestate.

Two more structurally identical "scan all 4 directions for a matching tile ID" routines
exist in the item-effect code (`Call_000_2f48` used from `$53a2`, `Call_000_2f4c` used from
`$572c`) — plausibly the "Ganseki" (fill hole/rock barrier) and "Oriru" (place stairs on
adjacent tile) item effects, which both need to find a qualifying adjacent tile. Not
individually confirmed from code, but the official English instruction booklet
(`temp/cave-noire-instruction-booklet/CaveNoire_InstructionBooklet_djvu.txt`) independently
describes exactly these two effects: "When placed on top of a hole or lava, it creates a
tile. When placed on a tile, it creates an obstacle." (Ganseki) and "If there are no
obstacles, creates stairs leading to the next level." (Oriru) — text confirmation, not a
code-level one, but it matches the "find a qualifying adjacent tile" shape closely enough
to raise confidence on both.

A separate booklet hint worth tracking: "What at first sight looks like a hole, may
actually be an 'invisible tile' that can be walked upon. If a Centipede or Tarantula walks
above the hole, it could be an invisible tile." This implies a disguised-floor tile class
visually identical to a real hole but walkable - distinct from both the confirmed `$1d`
crack tile and genuine holes, and not yet identified in the tile-class table below.

Bit 7 of the raw tile byte means "this is an item/chest, not terrain" - see
`tools/tile_grid.py` (the live grid-overlay tool) for the full `$d500` overlay
indirection this implies, confirmed by cross-checking its output live against real
play across several savestates.

#### Known raw terrain tile IDs (bit 7 clear)

Built up from room dumps across many savestates/sessions; only the ones below have a
confirmed or strongly-suspected meaning; plenty of other values (`$0b`, `$0c`, `$0d`,
`$0e`, `$20`, ...) show up regularly in dumps and are still unidentified.

| Raw value | Meaning | Confidence |
|---|---|---|
| `$00` | Open floor | Confirmed (ubiquitous, matches walkable areas) |
| `$06`/`$07`/`$08`/`$09` | Wall, various border orientations | Confirmed as solid/wall-class (consistently forms room borders), exact per-value orientation not individually confirmed |
| `$10` | Stairs down | Confirmed live (`save_002.state`, user-identified in the grid tool at F3) |
| `$1d` | Floor crack ("!!" warning) - see the hole-jump section above | Confirmed |
| `$1b` | **Lava** | **Confirmed live, twice independently** - see "Lava" below |
| `$11` | Harmless floor variant, likely decorative (sits right next to a confirmed `$10` stairs tile) | Confirmed walkable, no side effect observed |
| `$24` | Harmless floor variant, seen at a room's south border | Confirmed walkable, no side effect observed |
| `$15`, `$19` | Same dense wavy texture as the confirmed-lethal `$1b`, in the same room | Not individually tested, but very likely also Lava given the shared visual pattern |
| `$16`, `$17` | A short, visually distinct double-tile strip breaking up the `$15`/`$19`/`$1b` wavy texture - candidate **Bridge** (manual: "you can walk across it normally") | Unconfirmed - every direct approach path from the one tested savestate's spawn point crosses the lethal `$1b` first, so this couldn't be reached without dying; needs a different savestate/approach angle |
| `$18`, `$1e` | A paired column/pillar decoration (`$18` cap, `$1e` body) seen forming two vertical architectural strips in an `autowalker.py`-found room | Test inconclusive - an adjacent monster's attack-targeting state (`$c125=22`, see below) corrupted the player-position reading mid-test; needs a retest without a monster nearby |
| `$20` | Seen at a room border | Test inconclusive - the test savestate's player was already at 1 HP with an active threat nearby and died before reaching the tile; needs a healthier savestate |
| `$23` | Sits inside a small alcove, approached by walking across several `$09`-valued cells before bumping into a wall (`$c125=7`) one cell short of it | Secret-passage mechanism ruled out directly (`$c20f=0` for this room - nothing to discover) - see the collision caveat right below the table for why this block is actually more interesting than `$23` itself |

#### A collision caveat: `$09` is not reliably "wall" on its own

While testing `$23` above, the player walked freely across four consecutive `$09`-valued
cells `(2,1)` through `(2,4)` (same room as the `$23` test, raw bytes read directly from
WRAM: `$c841`-`$c844`, all `$09`), then bumped (`$c125=7`, the permanent "wall" state) trying
to step from `(2,4)` onto `(2,5)` - **also raw value `$09`, byte-for-byte identical** to the
four cells just walked across (confirmed by reading the raw addresses directly, not just the
grid tool's labels, to rule out a decode bug). So collision can't simply be "is this raw tile
value in the wall set `{$06,$07,$08,$09}`" the way the terrain-ID table above assumes - two
cells with the exact same byte, one walkable and one not, a few tiles apart in the same row.

This means **the terrain-ID tables on this page describe what's visually/byte-wise present,
not necessarily what's mechanically "wall" vs "floor"** - worth keeping in mind for any
future tile-identification work.

#### Movement collision, partially traced

Followed the actual move-commit code (bank 0, the unlabeled function starting around
`$3406` that stages a move, then - *before* checking anything - copies the staged position
straight into `$c500`-`$c504`) to find what decides whether a step actually succeeds or
produces the permanent "bump" state (`$c125=7`, see the secret-passage section below for
where that state was first observed):

```
... (position already committed to $c500-$c504 at this point)
call Call_000_3d8f    ; the real gate - see below
ret nc                ; success: move stays committed
ld a, $07
ld [$c125], a         ; failure: enter the permanent bump state
```

`Call_000_3d8f` (bank 0, `$3d8f`) turned out to be a **monster/object-occupancy check, not
a generic terrain-wall check**: it tries up to three of the four cardinal neighbor cells (in
a priority order selected by the player's current facing direction, `$c510`), each via:

1. `Call_000_3e08` (bank 0) - a hardcoded room-bounds check: fails (treated as blocked) if
   the candidate row is `>=8` or column is `>=10` - **this is the real origin of the 8x10
   viewport dimensions** `tools/tile_grid.py` already uses for rendering (previously
   inferred from screen/OAM geometry, now confirmed from the actual bounds-check code: the
   addressable room data is 16x16, but only an 8-row x 10-column window is ever reachable by
   movement).
2. `$57bb`/`Call_001_57db` (bank 1) - scans the `$c5c0` monster array for an occupant at that
   candidate cell. Empty = pass. Occupied = blocked, **except** two specific classes are
   special-cased as non-blocking (see [Monster System](Monster-System) "Non-monster
   entries" for what this implies about classes `18`/`19`).

**This fully explains the bounds-check origin, but not the actual `$23`-approach wall-bump**
from the collision caveat above - that block happened at a cell well inside the 8x10 bounds
with no monster-array occupant nearby in that savestate, so some other, still-unlocated
check must also be feeding into this same `$c125=7` bump path (or a different one was taken
through the move-commit function that wasn't traced here). The generic "is this raw terrain
tile solid" check - if one exists as a single, dedicated piece of code at all - is still not
found; it may be folded into the tile-class dispatcher already documented at the top of this
page rather than being a separate gate.

### The secret-passage ("?") mechanic, confirmed live

Tested on a savestate standing one tile north of a hidden south-side passage, with a "?"
speech bubble shown above the player's head (and, per the description, also shown one tile
further left/right along the same wall segment - the warning is three tiles wide, the real
passage is the middle one).

The original `Call_000_2f48`/`$09` hypothesis above turned out to be another dead end here,
same lesson as the hole-jump investigation: that routine was never called during the entire
test (hooked, zero hits), even though the "?" bubble was visibly on-screen and the passage
genuinely opened.

**What actually happens**, found via direct behavioral A/B testing plus a full trace of the
real code path: walking into a genuine solid wall (tested: north) blocks the player forever
(`$c125` state `7`, "bump" state, never resolves no matter how long you hold the direction).
Walking into the described secret passage (south) instead puts the player into `$c125` state
`23` for a fixed ~64-tick delay, after which the wall is simply gone and the player walks
straight through - this is the "open it by just walking into it" behavior described from
play.

State 23's handler (`$3e89`, the `$c125` jump table's 24th entry, renamed
`Jump_000_3e89_SecretPassageDispatch`) is the real reveal routine:

- `$c263` is reloaded with `$10` and counted down each pass - this is the short pause the
  player feels before the wall actually opens.
- `$c20f` is a **per-room bitmask, one bit per cardinal direction**, marking which wall
  face(s) still have an undiscovered secret passage. Confirmed live: bumping the south wall
  set bit 2 (`$c20f = 0b0100`).
- Depending on which bit is set, the dispatcher jumps to one of four per-direction handlers
  (renamed `Jump_000_3eae_SecretPassageDir0` .. `Jump_000_3f2d_SecretPassageDir3`, for bits
  0-3). Confirmed live: bit 2 → `Jump_000_3ed9_SecretPassageDir2`.
- Each handler **permanently clears its bit** in `$c20f`, looks up the linked neighbor room
  through the same `$206b` room-link word table the warp mechanic uses, and sets the
  mirrored bit in that neighbor room's own header - so the passage is now open from both
  sides and never needs re-discovering. The matching helpers were renamed
  `Call_000_3f56_FinalizeSecretPassageDir0` / `..Dir1` (`Call_000_3fa3`) / `..Dir2`
  (`Call_000_3f7c`) / `..Dir3` (`Call_000_3fc9`).
- If no bit is set (nothing left to discover that way), it falls back to the normal
  state 0/1 idle handling.

Live value trace for the south test: `$c20f` `0b0100` → (after the ~64-tick delay) `0`,
scratch room-index register `$c262` → `2` (the destination room), then `$c125` returns to
`0`/`1` and `$c500` (current room) flips from `1` to `2` as the player walks through. Matches
the description exactly: appears as a solid wall with a warning icon, then simply opens after
walking into it.

Not tracked down: the exact render routine for the three-tile-wide "?" warning bubble itself,
and how/when `$c20f`'s bits get set in the first place (room init data vs. some other
precondition).

## Darkness / torch visibility

The StrategyWiki describes rooms where darkness covers the floor beyond 1-2 tiles of the
player, monsters show only as a pair of eyes until approached, and the `Akari` item (or
defeating a Flame Eye) removes it.

**The Flame-Eye part is now confirmed from live play too**, not just the StrategyWiki
claim: in a dark room with a hidden monster shown only as the eye-pair sprite (OAM tile
`140`), defeating it made the whole room light up immediately, the same effect as using
Akari. Matches the community description exactly.

**Confirmed**, using a real savestate from floor B4F (deep enough to have darkness active,
provided by the user via `tools/play_and_save.py`):

- `pyboy.screen.image` renders the scene correctly (unlike the single-tile `Tile.image()`
  API, which still returns solid black - a PyBoy quirk noted earlier in this project). The
  screenshot matches the StrategyWiki description and the earlier reference screenshot
  exactly: a dense dither pattern covers almost the entire visible area, with only a small
  patch of real room art around the player, and the monster rendered as a plain white
  eye-pair sprite (OAM tile `140`, two sprites placed side by side).
- The dark placeholder tile's raw VRAM value is `$5f` (95) - read directly from the
  `$9800`-based background tilemap (LCDC bit 4 set, so `$8000` addressing applies directly).
- **It's a real, dynamic fog-of-war, not static room art.** Before moving one step, two
  tilemap rows at the edge of the revealed patch were solid `$5f`. After a single `down`
  press (one tile of movement), those exact two rows were overwritten with real floor/wall
  tile IDs, while the previously-revealed area stayed visible and unchanged - i.e. revealed
  tiles are remembered, not just shown within a fixed radius of the player's current
  position.

The official instruction booklet adds one behavioral detail not yet verified live: "Check a
monster's HP using the Select Button. If a monster is in fog, however, their HP cannot be
checked" - i.e. the Select-button HP display and the eye-pair fog-of-war rendering are meant
to be linked (can't inspect what you can't see clearly), not independent systems. Not
confirmed against code or a savestate yet.

**Still open:** the exact routine that performs this per-move "reveal nearby tiles" redraw
hasn't been located yet - a search for `$5f` used as an immediate comparison constant in
banks 0/1 came up empty, suggesting the redraw doesn't check "is this tile still dark" but
unconditionally redraws a small area around the new position every move (in both dark and
normal rooms alike), with the darkness-specific part only being that affected rooms
pre-fill their unexplored tiles with `$5f` at load time rather than the real tile.

**The `Akari` item, live-tested** (item type `$0d`, item-screen name アカリ confirmed) despite
the savestate's critically low HP (3/10) - risk accepted and nothing went wrong: using it
from the item screen clears its inventory slot (consumed, one-shot) and immediately reveals
a large chunk of the dark tilemap in one go (dark `$5f` tile count dropped from 204 to 136
in a single use) - a "light up more of this room now" burst, not a lasting radius buff.
Screenshots before/after confirm a visibly much larger room revealed. Interestingly, the
monster that was in the newly-lit area was **still** rendered only as the eye-pair sprite
afterwards - so the "reveal nearby tiles" system (room geometry) and the "reveal a monster's
real sprite" system are independent; Akari only affects the former.

## Dungeon exit ("Door")

Confirmed live on a savestate standing next to the exit tile (visually a distinct icon,
quest already at 3/3 monsters killed): walking adjacent to it and pressing **A** sets the
main game-state dispatcher (`$c100`) to `12`, entered via the handler at bank 0 `$0bd4`
(not yet named - reached through the top-level `$c100` state machine, a separate, larger
dispatch table from the `$c125`/`$c126` ones already mapped for movement/combat/chests).
This plays a palette-fade transition, then a scrolling "running down a corridor" animation,
and finally a results screen:

> コナミ タロウ は、3 ひきモンスターをたおしました。おめでとう!!
> ("Konami Tarou defeated 3 monsters. Congratulations!!")

followed by a looping list of the individual kills, each showing a monster icon, a running
kill index, its name, and a weight/height stat line, e.g. `1 ミノタウルス 180kg 2.7m`
(Minotaurus) and `2 タランチュラ 94kg 2.4m` (Tarantula) - the same named monster can show
slightly different weight/height between individual kills (`180kg/2.7m` vs `184kg/2.9m` for
two different Minotaurus kills), suggesting each monster instance gets small randomized
"flavor" stats independent of its combat stats. This is a promising lead for identifying
monster type IDs by name in the future, but wasn't cross-referenced against the struct data
in this session.

The screen loops this list indefinitely - across a 3000-tick (~50 second) idle run and
several button combinations (A, B, Start, Select, held A), nothing dismissed it back to the
guild menu, so the exact "continue" input (or whether it's timed and our sampling just
missed a narrow window) is still unconfirmed.

The exact tile class/trigger condition for *approaching* the exit (as opposed to the `$c100`
state transition once A is pressed) wasn't isolated - the resolved tile class read as a
plain `$80`-with-bit-7-set value indistinguishable from an ordinary wall in this test,
suggesting the exit may be a hardcoded coordinate check rather than a tile-class entry like
stairs/chests/warps.

## A second, separate per-floor "bonus feature" roll (structure found, purpose unconfirmed)

Besides the already-documented 9-slot `$c300` object-placement table (monsters/items),
there's a *second*, independent floor-setup step (`Call_001_7446`/`Call_001_747b`, bank 1
`$7446`) that runs over the same 9 room slots but writes into a different, smaller 9-byte
array (`$c272`-`$c27a`, reset to `$ff` = "none"):

1. For each of the 9 rooms, `Call_000_12eb` (bank 0 `$12eb`) switches to bank 3 and reads one
   byte from a per-quest/floor template at bank 3 `$5655` - indexed by `$c202` using the
   exact same 4-byte-header-then-index scheme already confirmed for the monster
   type→class encounter data at bank 3 `$6a75` (see [Monster System](Monster-System) "Type
   -> class resolution"). A room whose byte reads `$ff` is excluded.
2. `$c271` ends up holding a **count of how many of the 9 rooms qualified**.
3. If at least one room qualified, `Call_001_747b` rolls one random byte (`Call_000_0456`),
   scales it by the current floor depth (`Call_000_03a4`), then calls
   `Call_000_1267_LookupQuestLevelNibbleStat` (bank 0 `$1267`) - a quest+level lookup against
   a *third* new table, bank 2 `$6da6` (right after the item-pool weight templates), which
   packs two 4-bit values per byte (selected by bit 0 of the per-level pointer) and returns
   one nibble (0-15).
4. If that nibble is nonzero, it's used as an index into a 16-entry address table at bank 1
   `$74a5` to pick one of the (up to 9) `$c272`-`$c27a` slots, and the random roll from step 3
   is written there.

Net effect: a quest+level-dependent *chance*, gated by a per-room eligibility byte from yet
another bank 3 template, of stamping a random value into one specific room's slot in this
second array. Nothing in bank 0/1 reads `$c272`-`$c27a` back via a literal address (it must
happen through another computed/indirect lookup, not yet located), so what this actually
*controls* in-game is still unconfirmed - plausible candidates given the shape of the system
(quest+level-scaled, per-room gated, floor-depth-scaled magnitude): which room gets a
chest vs. a bare item pile, an Orb/Fairy-cage placement roll, or a secret-passage/trap
count. Needs a savestate at the moment a new floor is generated, with `$c271`-`$c27a` and
the bank 3 `$5655` template dumped, to pin down the actual effect.

## A few more `$c125` movement-substates identified

`autowalker.py`'s random exploration surfaced several `$c125` values outside the
previously-documented set, three of which were identifiable immediately from their
screenshot:

| `$c125` | Screen shown | Meaning |
|---|---|---|
| `2` | Item-screen popup (`つかう`/`すてる`/`やめる` - use/toss/cancel) | Item-use menu open |
| `5` | "どくけし をひろった。" ("Picked up Dokukeshi.") | Item-pickup confirmation popup |
| `14` | Character sheet (name, HP, こうげき/ラッキー/ぼうぎょ/たいちょう - attack/lucky/defense/condition) | Camp stats screen (Start button, see the official manual's "Getting Started") |

States `13`, `18`, `22` were also flagged but their screenshots just showed ordinary
mid-movement dungeon frames with no obvious distinguishing UI - likely fine-grained
animation sub-steps of the walk/monster-turn cycle rather than separate mechanics, but not
individually confirmed. State `22` specifically showed up repeatedly alongside a visible,
adjacent monster sprite during the tile movement tests below, including one case where it
corrupted the player-position read entirely (the viewport-grid code reads `$c503`/`$c504`
assuming those are always the player's own row/col, but while this state is active the
values read back implied a multi-room "teleport" that never actually happened on screen) -
tentatively, an attack-targeting/monster-turn exchange state that temporarily repurposes
the position variables for the monster's cell, not a distinct player-movement mechanic.

## Lava - confirmed live: raw tile `$1b`

The official English instruction booklet is explicit and slightly more specific than the
StrategyWiki summary: "If you fall into it, your HP will be reduced to zero, and you will
fail your quest." This is a hard instant-death trap, distinct from a **Hole** (same booklet:
"If you fall down a hole, you will take damage, reducing your HP, and sending you to
below" - damage + floor drop, survivable).

**Confirmed live** via a movement test against an `autowalker.py`-found savestate (floor 2,
a room with a dense wavy-texture tile field the bot had flagged as unidentified): stepping
the player one tile onto raw value `$1b` zeroed `wPlayerHP` (`$c120`) instantly in the same
input step (`6` → `0`, then separately `16` → ... → `0` on a second, independent run from a
fresh reload of the same savestate) and immediately transitioned the main dispatcher
(`$c100`) to `9` - part of the same floor-transition/death cluster already documented for
Game Over trigger #3 (`$c100=11`, see [Player Death and Game Over](Player-Death-and-Game-Over)).
Reproduced twice independently. This is a full HP wipe in a single step, not a gradual
poison/combat tick (which deals 1-4 points per turn in every confirmed combat log so far) -
matching the booklet's "reduced to zero" wording exactly rather than ordinary damage.

The same room has two other raw values (`$15`, `$19`) sharing the identical wavy texture,
very likely also Lava, plus a short, visually distinct double-tile strip (`$16`/`$17`) that
looks like a safe crossing path (candidate **Bridge**) - see the terrain-ID table above for
what's still open about those.

## Not located at all

- **Fairy Cage** — unlockable with a key item (booklet: "A box in which fairies have been
  locked. Use a key to open it" - matches the already-confirmed Kagi/`$14` item code, see
  [Item System](Item-System)), not investigated live.

See [Open Questions](Open-Questions) for the full savestate wishlist.
