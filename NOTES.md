# Fortschrittsnotizen

## Tooling (lokal im Projektordner)

- `tools/mgbdis/` — mgbdis v3.0 (Git-Submodule), Game Boy Disassembler
- `.venv/` — Python venv mit PyBoy + Pillow (headless Emulation, Screenshots, Memory-Scanning)
- RGBDS (rgbasm/rgblink/rgbfix) — systemweit installiert, nicht projektlokal
- SameBoy / BGB — systemweit installiert, bisher nicht für CDL genutzt (siehe unten)

## Disassembly-Stand

- `src/` enthält rohes mgbdis-Disassembly der japanischen Original-ROM (`rom/Cave Noire (Japan).gb`)
- `make` in `src/` baut bit-identisch (MD5 `10d92861e262069ce31559e12b927aa0`)
- Noch keine Code/Daten-Trennung (kein `.sym`-File) — mgbdis v3.0 hat **kein** `--cdl`-Flag
  entgegen der Annahme in `brainstorming.md`. SameBoy hat ebenfalls keine CDL-Funktion (Quellcode geprüft).
  Mgbdis nutzt stattdessen ein eigenes `.sym`-Format mit `.code`/`.data`/`.text`/`.image`-Blöcken,
  die man manuell oder über Matt Curries Web-Emulator "Beaten Dying Moon" erzeugt.
- Entscheidung: Code/Daten-Trennung vorerst zurückgestellt, stattdessen inkrementelle
  RAM-Watchpoint-Exploration.

## Steuerung / Menüführung (per PyBoy headless erkundet)

Ablauf vom Boot bis in den Dungeon:

1. Boot (Konami-Logo) → Titelbildschirm "PUSH START KEY" (~ab Frame 870)
2. **Start** drücken (zweimal, mit Gap) → Guild-Menü ("ギルド")
3. **A** auf "クエスト とうろく" (Quest-Registrierung) → Quest/Level-Auswahlbildschirm
   - D-Pad ändert zyklisch die "クエストN" Nummer (1–4, passt zu den 4 Dungeon-Typen)
   - **A** togglet den Cursor zwischen Feld "Quest" und "Level"
4. **A** (während Quest-Feld aktiv) → Missions-Bestätigung ("Nひki モンスターをたおぜ。OK/NO")
5. **A** (OK) → Charakterbogen (z. B. "コナミ タロウ", HP 10/10, Stats)
6. **A** → Item-Auswahlbildschirm (4 Slots, füllen sich automatisch über ~600 Frames,
   unabhängig von Eingaben — reine Zeit-Animation)
7. **A** (nach vollständiger Füllung) → Übergangsbildschirm "B 1F" → eigentliche Dungeon-Ansicht
   mit HUD: `HPx/10`, `モンスター n/N`, Etagenanzeige unten rechts

Gespeicherte PyBoy-Savestates in `scratch/states/` (Boot bis Dungeon-Eintritt),
nützlich um Exploration fortzusetzen ohne die Sequenz erneut abzuspielen:
`guild.state`, `map.state`, `charsheet.state`, `loadout.state`, `items.state`,
`items_full.state`, `dungeon.state` (B1F, HP10/10, Monster 0/3).

## RAM-Adresse für Spieler-HP: noch nicht gefunden

Versuch per Byte-Diff-Scan (vor/nach Schaden) in WRAM (`0xC000`–`0xDFFF`) und HRAM:

- Naive "exakter Wert 10 → exakter Wert 8"-Suche liefert **keine** Treffer, obwohl das HUD
  zuverlässig `HP 8/10` nach einem Treffer zeigt.
- Auch eine "Schadensakkumulator"-Hypothese (Byte geht von 0 auf 2, dann weiter hoch) hat über
  mehrere Treffer hinweg keinen konsistenten Kandidaten ergeben (13 Kandidaten nach einem Treffer,
  keiner passte exakt zum erwarteten Delta beim zweiten Treffer).
- Vermutung: HP ist nicht als einfacher Linearwert im RAM abgelegt (z. B. BCD-kodiert,
  Teil eines Bitfelds/einer Struct mit Offset-Padding, oder wird erst beim HUD-Redraw aus
  anderen Werten berechnet statt direkt dekrementiert).

**Nächster sinnvoller Schritt:** echte Write-Watchpoints statt Snapshot-Polling. PyBoys
`hook_register` kann an einer festen Adresse einen Breakpoint setzen, aber nicht "bei jedem
Schreibzugriff auf RAM-Bereich X" triggern. Dafür bräuchte es entweder:
  - einen echten Debugger mit RAM-Write-Breakpoint (SameBoy/BGB GUI, erfordert entsperrten Desktop), oder
  - gezieltes Durchsuchen des Disassembly nach der HUD-Zeichenroutine (Suche nach der Pixel-/
    Zeichenkette "HP" bzw. dem Text-Tilemap-Schreibcode), um von dort rückwärts zur
    Quelladresse des HP-Werts zu gelangen (statischer Analyse-Ansatz statt dynamischem Scan).
