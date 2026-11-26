# Controls and Menus

## In-game controls (from the StrategyWiki gameplay page)

| Game Boy input | Action |
|---|---|
| D-pad | Move |
| A | Confirm / open item screen |
| B | Cancel / skip turn |
| Start | Camp menu |
| Select | Display monster HP |

The game is **fully turn-based**: nothing moves without a key press (verified by idling 40
emulated frames with no input — zero position changes anywhere). There is no manual attack
button; see [Combat System](Combat-System) for how attacks actually trigger.

## Boot → dungeon entry flow (explored headless via PyBoy)

1. Boot (Konami logo) → title screen "PUSH START KEY" (~frame 870)
2. **Start** (twice, with a gap) → Guild menu
3. **A** on "Quest Registration" → quest/level select screen
   - D-pad cycles through "Quest N" (1–4, matching the 4 dungeon/quest types)
   - **A** toggles the cursor between the "Quest" and "Level" fields
4. **A** (with quest field active) → mission confirmation ("Defeat N monsters. OK/NO")
5. **A** (OK) → character sheet (name, HP 10/10, stats)
6. **A** → item loadout screen (4 starting slots fill in automatically over ~600 frames,
   regardless of input — it's a pure time-based animation, not interactive)
7. **A** (once fully loaded) → transition screen "B 1F" → actual dungeon view with HUD:
   `HPx/10`, objective counter, floor indicator bottom-right

Useful PyBoy savestates captured along this flow (see `scratch/states/`, gitignored but
regeneratable by replaying the above): `guild.state`, `map.state`, `charsheet.state`,
`loadout.state`, `items.state`, `items_full.state`, `dungeon.state` (B1F, HP 10/10,
Monster 0/3).
