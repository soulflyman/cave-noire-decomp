# RAM Map

Known WRAM addresses and their purpose. This is the English-language summary; the detailed
derivation for each (how it was found, what verified it) is in `NOTES.md`.

Addresses marked **(const)** have a named `DEF wXxx EQU $cXXX` constant in `src/bank_000.asm`.
Everything else is documented here and in `NOTES.md` but still referenced by raw address in
the source, since promoting every known address to a constant is ongoing work.

## Player stats

| Address | Name | Notes |
|---|---|---|
| `$c120` | `wPlayerHP` **(const)** | Current HP, BCD-encoded |
| `$c121` | `wPlayerAttack` **(const)** | Base attack stat |
| `$c122` | `wPlayerDefense` **(const)** | Base defense stat |
| `$c123` | `wPlayerLucky` **(const)** | Lucky stat — see [Combat System](Combat-System) |
| `$c124` | `wPlayerMaxHP` **(const)** | Max HP, copied from current HP at quest start |
| `$c129` | — | Effective attack (base + two equipment bonus bytes) |
| `$c12a` | — | Effective defense (base + two equipment bonus bytes) |
| `$c12d`/`$c12e` | — | Attack bonus bytes (e.g. from an equipped sword) |
| `$c12f`/`$c130` | — | Defense bonus bytes (e.g. from an equipped shield) |

## Quest / dungeon state

| Address | Name | Notes |
|---|---|---|
| `$c100` | — | Main game state dispatcher |
| `$c101` | — | Current quest type: 1=Monster, 2=Gold, 3=Orb, 4=Fairy |
| `$c102` | — | Current level (1-based index into per-level tables) |
| `$c104` | `wCurrentFloor` **(const)** | Current dungeon floor number |
| `$c125`/`$c126` | — | Secondary state machines (movement/menu sub-states) |
| `$c149` | — | Generic "wait N frames, then transition" timer, reused by many unrelated states (not floor-crack-specific, despite an earlier hypothesis) |

### Quest objective tracking (per quest type)

| Quest type (`$c101`) | Progress address | Target address |
|---|---|---|
| 1 (Monster) | `$c16a` | `$c16b` |
| 2 (Gold) | `$c128` | `$c16e` |
| 3 (Orb) | `$c16c` | `$c16d` |
| 4 (Fairy) | `$c16f` | `$c170` |

Per-level target values are read from a table in ROM bank 2 (`$6e10`-`$6e37`), see
[Quest System](Quest-System).

## Monster system

| Address | Name | Notes |
|---|---|---|
| `$c420` | — | Monster type currently being processed by the per-turn dispatch loop |
| `$c5c0`-`$c800` | — | Monster array: 16 bytes × up to 36 slots. See [Monster System](Monster-System) for the full struct layout |
| `$c427`/`$c428` | — | Warp partner-position pair (plausible, not dynamically confirmed) |

## Item system

| Address | Name | Notes |
|---|---|---|
| `$c140`-`$c147` | `wInventory` **(const)** | 8-slot inventory, one byte per slot, `$00` = empty |
| `$c510` | — | Direction-scan index used by several "find an adjacent matching tile" item effects |
| `$c514` | — | Generic "action in progress" flag |
| `$c515` | — | RNG-derived event timer/duration, scaled by Lucky for most item types |
| `$c516` | — | Item type ID currently being used (staging variable for the item-effect dispatcher) |

## Combat staging

| Address | Name | Notes |
|---|---|---|
| `$c523`/`$c524` | — | Combat participant IDs (attacker/defender): `<2` = player, `>=2` = monster slot index |
| `$c525`-`$c528` | — | Per-monster-slot adjacency/position value (incoming attack check) |
| `$c529`-`$c52c` | — | Per-monster-slot damage value (incoming attack) |
| `$c532` | — | Staged incoming damage (`$ff` = no hit this turn) |
| `$c535`-`$c537` | — | Staged attack/defense values for the current combat exchange |
| `$c539` | — | Facing/direction-derived damage scaling factor (`and $1f`) |
| `$c541` | — | Current monster slot index (1-4) in the per-turn attack-check loop |

## OAM / rendering

| Address | Name | Notes |
|---|---|---|
| `$c011`/`$c012` | — | 16-bit LCG state abused as a "good enough" pseudo-random source (see [Combat System](Combat-System)) |
| `$c225`/`$c226` | — | Monster row/column position (pixel / 16) |
| `$c503`/`$c504` | — | Player row/column position tile (render-cache copy, reliable for movement detection, but writing to it directly does **not** teleport the player) |
| `$da00`-`$dd00` | — | Triple-buffered OAM shadow area / background scroll copy |

See `NOTES.md` for the full, chronological derivation of every address above, including
dead ends and the exact PyBoy commands/hooks used to verify each one.
