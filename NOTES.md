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

**Gelöst:** Der Grund, warum die naive Byte-Diff-Suche scheiterte: HP wird **BCD-kodiert**
gespeichert (`HP=10` → Byte `$10`, nicht `$0A`). Gefunden über einen Hybrid-Ansatz:

1. Per PyBoy die VRAM-BG-Tilemap ($9800-$9BFF) vor/nach einem Treffer verglichen
   → geänderte Tiles bei `$9A02`/`$9A03` (Bildschirmposition der HP-Ziffern).
2. Diese Adressen im Disassembly als Literal gesucht (`grep '9a0[0-9a-f]' bank_*.asm`)
   → direkter Treffer in `Call_000_2bc2_DrawStatTiles` (bank_000.asm).
3. Von dort rückwärts verfolgt zu `Call_000_2b1e_ConvertPlayerHPToTiles`, das
   `wPlayerHP` ($C120) liest und über die generische Routine
   `Call_000_0e83_BcdToTiles` (BCD-Nibble-Split, Tile-Basis `$9e` = Ziffer '0') in
   Tile-IDs umwandelt.

**Ergebnis:** `wPlayerHP EQU $c120` (BCD, 1 Byte) ist jetzt in `src/bank_000.asm` als Symbol
definiert und an den Call-Sites verwendet. Rebuild bleibt bit-identisch (MD5
`10d92861e262069ce31559e12b927aa0`).

**Weitere Stats (Gold, Monster-Zähler, Etage) — NICHT über dieselbe Routine:**

Alle statischen `call`/`jp`-Stellen zu `Call_000_0e83_BcdToTiles` wurden geprüft (6 Stellen,
alle in bank_000.asm). Nur eine davon (`Call_000_2b1e_ConvertPlayerHPToTiles`, HP) wird beim
tatsächlichen Spielen je ausgeführt. Verifiziert per PyBoy-Hook (`hook_register` auf Bank 0,
`$0e83`) über den gesamten Boot→Dungeon→Kampf-Ablauf: nur `de=$c120` (HP) feuert.

Ein anderer vermeintlicher Aufrufer, `Call_000_0ec9` (bank_000.asm, liest `$c104`, schreibt
nach VRAM `$98e9` mit Tile-Basis `$10` statt `$9e`), **feuert nie** — weder er noch seine
Caller-Kette (`Call_000_08dc`) wurden je per Hook getroffen. Klassisches Symptom von
Disassembly ohne Code/Daten-Trennung: mgbdis hat dort plausibel aussehenden, aber in
Wirklichkeit nie erreichten "Code" erzeugt (vermutlich echte Grafik-/Tabellendaten).
**Lektion:** Call-Sites im rohen mgbdis-Output nicht blind vertrauen — immer per Hook
dynamisch verifizieren, dass der Code tatsächlich erreicht wird, bevor man ihn analysiert.

→ "モンスター n/ N" (Monster-Kill-Zähler) und die Etagenanzeige "B 1F" nutzen demnach eine
andere, noch nicht gefundene Zeichenroutine (vermutlich einfachere Einzelziffer-Darstellung
ohne den generischen BCD-Konverter, da es sich um einstellige Werte handelt).

## Angriffsmechanik geklärt

**Es gibt keinen manuellen Angriffsknopf.** Kampf läuft vollautomatisch pro Spielzug ab,
sobald Spieler und Monster benachbart sind — bestätigt per OAM-Sprite-Tracking (PyBoy
`get_sprite`): Schaden trat ein, während Spieler und Monster auf benachbarten Feldern
standen (nicht überlappend), nach mehreren Zügen ohne Wirkung an derselben Position
(klassisches rundenbasiertes RNG-Treffersystem, kein garantierter Treffer pro Zug).

Code-Pfad (bank_001.asm, ab `jr_001_43fb_CheckMonsterSlot1`, $43fb):

1. Pro Spielzug werden bis zu **4 Monster-Slots** durchgegangen (`$c541` = aktueller
   Slot-Index 1-4). Je Slot: Adjazenz-/Positionswert in `$c525`-`$c528`, Schadenswert in
   `$c529`-`$c52c`.
2. `Call_001_44aa_CheckMonsterSlotHit` ($44aa) prüft den Positionswert des Slots
   (`sub $02` + Tabellen-Lookup über `Call_001_4b49`) — vermutlich Adjazenz-Check.
3. Bei Treffer: Schadenswert wird nach `$c532` kopiert, dort von
   `jr_001_5b90_ApplyPlayerDamageIfAny` ($5b90) ausgelesen (`$ff` = kein Treffer).
4. `jr_001_5ba3_SubtractDamageFromHP` ($5ba3) zieht den Schaden **BCD-kodiert** von
   `wPlayerHP` ab, über die generische Hilfsroutine
   `Call_000_037b_SubtractBCD16Clamped` (bank_000.asm, $037b) — klemmt bei 0 (kein
   Unterlauf), nutzt intern `daa` (Decimal-Adjust) für BCD-Subtraktion.
5. Danach Neuzeichnen der HP-Anzeige über `Call_000_2b1e_ConvertPlayerHPToTiles`
   (siehe oben).

Noch nicht gefunden: der eigentliche Zufalls-/Trefferchance-Rolling-Mechanismus (ob und
wo `$FF04`/rDIV hier einfließt) sowie die Gegenangriffs-Logik (Spieler → Monster-Schaden,
die floating "2"-Zahl über dem Monster in `scratch/longfight.png`).

## Zufalls-/Trefferchancen-Suche (Zwischenstand, nicht abgeschlossen)

**Ausgeschlossen:**
- Alle `rDIV`/`$FF04`-Treffer im Disassembly sind Fehldekodierungen (umgeben von `nop`/`rst $38`-
  Datenmüll), keiner liegt in bank 0/1 (wo der Kampfcode lebt).
- Der Schadenswert selbst (`$c529`-`$c52c`) ist **deterministisch** — ein reiner Tabellen-
  Lookup pro Monstertyp über `Call_001_518a` (generische `hl[a]`-Lookup-Hilfsfunktion,
  `RST_28` ist nachweislich nur `hl += a`, siehe Vektor bei `$0028`), kein Zufallswert.
  Bestätigt durch Beobachtung: Schaden war in allen Tests exakt "2".
- `Call_001_44aa_CheckMonsterSlotHit` macht keinen Zufalls-Vergleich, nur einen Adjazenz-
  Check über eine Tabelle (`Call_001_4b49`).
- Der `$c542`/`$59dd`-Mechanismus (Bit-Rotation als Tabellenindex) steuert nur die
  Animationsgeschwindigkeit (`$c543`), nicht Kampfentscheidungen.

**Gefunden, aber nicht abgeschlossen:** Die Bewegungs-Engine. Per OAM-Positions-Tracking
(PyBoy) wurde `$c226` als Monster-Spaltenposition identifiziert (Pixel-X / 16). Das Spiel
ist vollständig rundenbasiert — ohne Tasteneingabe bewegt sich nichts (verifiziert: 40
Ticks Leerlauf ohne jede Positionsänderung).

`Call_001_4817` (bank_001.asm, $4817) ist die Positions-Update-Routine: liest eine
Bewegungs-Delta aus einer Tabelle (Struktur ab `hl`, Offset `l=2`) und addiert sie auf die
aktuelle Position (`$c225`/`$c226`). Von dort rückwärts verfolgt zu `Call_000_2eee`/
`Call_000_2f25` (bank_000.asm) — das sind Kollisions-/Tile-Lookup-Routinen (prüfen, ob das
Zielfeld begehbar ist), ebenfalls kein sichtbarer Zufallszugriff.

**Noch offen:** Wer/was wählt die konkrete Bewegungsrichtung (den Tabellen-Index für das
Delta) aus? Das wäre die eigentliche Quelle der wahrgenommenen Zufälligkeit beim Kampf
(Monster bewegt sich mal Richtung Spieler, mal weg) — aber das Zurückverfolgen bis dahin
reicht in die generische Entity-Bewegungs-/Kollisions-Engine hinein, die über mehrere
Strukturen/Tabellen hinweg verteilt ist. Das ist ein eigenständiges, deutlich größeres
Teilprojekt (im Prinzip die komplette Monster-KI/Pfadfindung), nicht mehr nur ein einzelner
Funktionsfund.

**Offen für die nächste Session:**
- Monster-Kill-Zähler-Adresse finden (braucht echten Kill, nicht nur Treffer — im Test ist der
  Spieler gestorben, bevor das Monster besiegt wurde; Angriffsmechanik noch nicht verstanden,
  bisheriges "in Monster hineinlaufen" verursacht nur gegenseitigen Schaden, aber keinen Kill
  in der getesteten Zeit).
- Gold-Zähler und Etagentiefe ("B 1F") noch nicht lokalisiert.
- Spieler-Tod-Verhalten (Game-Over-Screen) noch nicht exploriert.
