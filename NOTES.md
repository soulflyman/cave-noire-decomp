# Fortschrittsnotizen

## TODO / Offene Punkte (damit nichts verloren geht)

- [x] Monster-KI / "Zufalls"-Mechanismus gefunden — siehe "Zufalls-Mechanismus GELÖST" unten.
- [x] Gold-Zähler-Adresse gefunden (`$c128` für den Gold-Quest-Typ) — siehe unten.
- [x] Monster-Kill-Zähler-Adresse gefunden (`$c16a` für den Monster-Quest-Typ) — als
      Nebenprodukt der Gold-Suche, kein tatsächlicher Kill im Spiel nötig gewesen.
- [x] Etagentiefe-Adresse gefunden (`$c104` = `wCurrentFloor`) — siehe "Etagentiefe GELÖST"
      unten.
- [x] Spieler-Tod/Game-Over-Screen exploriert — siehe unten.
- [ ] Code/Daten-Trennung (CDL) weiterhin zurückgestellt (bewusste Entscheidung, siehe unten).

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

## Zufalls-Mechanismus GELÖST: Es gibt keine dedizierte RNG-Funktion

**Kernbefund:** Cave Noire hat (soweit gefunden) **keinen klassischen Zufallszahlengenerator**
(kein LFSR, kein rDIV-Read). Stattdessen missbraucht das Spiel einen harmlosen Nebeneffekt
der Spielschleife als "gut genug"-Zufallsquelle:

1. **`RST_00` ist ein zweites Sprungtabellen-Trampolin** (wie `RST_28`, aber für Jumps statt
   Adressarithmetik) — bestätigt am Handler `Jump_000_0433_RstJumpTableTrampoline`
   (bank_000.asm, $0433): `a` = Tabellenindex, die 2-Byte-pro-Eintrag-Tabelle liegt direkt
   im Bytestrom nach dem `rst RST_00`-Opcode (daher sieht sie ohne CDL wie zufälliger
   Code-Müll aus — klassisches mgbdis-Fehldekodierungs-Muster, diesmal aber als Hinweis
   genutzt statt als Sackgasse).
2. Jeder Monster-Datensatz (16 Byte, Basis `$c5c0 + 16×Index`) hat bei Offset `$0f` ein
   **2-3-Bit-Zustands-/Richtungsfeld**. Dieses Feld wird per `and $03`/`and $07` +
   `rst RST_00` als Index in eine 4er-Sprungtabelle benutzt, die auf die vier
   Kardinalrichtungs-Bewegungsfunktionen zeigt (`Call_001_45e8` runter, `Call_001_45ef`
   hoch, `Call_001_45f6`/`Call_001_45fd` links/rechts) bzw. im "Standardfall"
   (`Jump_001_7a71`/`Jump_001_7a9b`) auf die "Bewegung bestätigen"-Einstiegspunkte
   (`Jump_001_45b0/be/cc/da`).
3. **Die eigentliche Pseudo-Zufälligkeit:** In `Jump_001_79c6` (bank_001.asm, $79c6) wird
   dieses Feld per `inc [hl]` hochgezählt — und zwar **jedes Mal, wenn gerade NICHT dieser
   Monstertyp an der Reihe ist** (Vergleich mit `$c420`, dem aktuell verarbeiteten
   Monstertyp). Da die Spielschleife pro Zug mehrere Monstertypen nacheinander abklappert,
   läuft dieser Zähler mit einer für den Spieler nicht vorhersehbaren Taktung hoch — seine
   unteren Bits wirken dadurch wie ein Würfelwurf, obwohl es nur ein stupider Fortlauf-
   Zähler ist.

Damit ist auch die bei "Angriffsmechanik" offene Frage beantwortet: Es gibt keinen
Trefferwurf. Der Schaden ist fix (Tabellenwert pro Monstertyp), und ob ein Monster
überhaupt angreifen kann, hängt rein von Position (ausgerichtet auf Spielerreihe/-spalte,
siehe deterministische "Angriffs-Ausrichtung" oben) und diesem pseudo-zufälligen
Bewegungszähler ab (bestimmt, ob/wohin es sich stattdessen bewegt).

Umbenannt/kommentiert: `Jump_000_0433_RstJumpTableTrampoline` (bank_000.asm),
`Jump_001_79c6` (Kommentar, bank_001.asm). Rebuild bleibt bit-identisch.

## Gold-Zähler & Monster-Kill-Zähler gefunden

**Wichtige Erkenntnis zuerst:** "Gold" ist — wie vermutet — kein ständiger Spieler-Besitz,
sondern einer von mehreren **Quest-Zieltypen**. Die Quest/Level-Auswahl ist kein
Nummern-Zähler, sondern ein **Cursor über 4 Kartensymbolen** (unten-links=Quest1,
oben-links=Quest2 ["G"-Sack-Symbol], oben-rechts=Quest3, unten-rechts=Quest4). Missionstext
für Quest 2: *"2ゴールドをあつめる。"* ("Sammle 2 Gold") — bestätigt Quest 2 = Gold-Typ.

**Fundweg** (gleiche Methode wie bei HP: VRAM-Tilemap-Diff → Literal-Grep → Hook-Verifikation):

- `Call_000_2b72_DrawObjectiveProgressTiles` (bank_000.asm, $2b72) zeichnet die
  "Fortschritt"-Ziffer der Quest-Anzeige (z. B. die "0" in "ゴールド 0/2"). Liest
  `[$c101]` (aktueller Quest-Typ-Index), holt darüber per
  `Call_000_041e_WordTableLookupToDE` die typ-spezifische Fortschritts-Adresse aus einer
  Zeiger-Tabelle bei `$2b97`.
- `Call_000_2b5d_DrawObjectiveTargetTiles` (bank_000.asm, $2b5d) analog für die
  "Ziel"-Ziffer (die "2"), Tabelle bei `$2b8f`.
- Per PyBoy-Hook auf `$2b7b` (direkt nach dem Tabellen-Lookup in
  `Call_000_2b72_DrawObjectiveProgressTiles`) `DE` ausgelesen:
  - **Quest-Typ 1 (Monster, `$c101`=1): `DE = $c16a`** → Monster-Kill-Fortschritt.
  - **Quest-Typ 2 (Gold, `$c101`=2): `DE = $c128`** → Gold-Fortschritt.
  - Werte stimmten mit angezeigtem HUD überein (`$c128`=0 bei "ゴールド 0/2").

**Wichtig:** Diese Adressen sind nicht "DIE Gold-Variable" im absoluten Sinne, sondern die
jeweils aktive Objective-Progress-Adresse für den *gerade aktiven* Quest-Typ (`$c101`
wählt die Tabellenzeile). Für Quest-Typ 3/4 (vermutlich Schwert/Orb oder Schild/Orb) wurden
die entsprechenden Adressen noch nicht ausgelesen — wäre mit derselben Methode trivial
nachzuholen (Quest wählen, `$2b7b` hooken, `DE` lesen).

Umbenannt: `Call_000_041e_WordTableLookupToDE`, `Call_000_2b72_DrawObjectiveProgressTiles`,
`Call_000_2b5d_DrawObjectiveTargetTiles` (alle bank_000.asm). Rebuild bit-identisch.

(Offene Punkte: siehe TODO-Liste ganz oben in diesem Dokument.)

## Etagentiefe ("B 1F") — noch nicht gefunden

**Anders als HP/Gold/Monster-Zähler wird die Etagenziffer per OAM-Sprite gezeichnet**, nicht
über die BG-Tilemap (das feste Sprite `tile=18` bei Bildschirmposition (144,128) im
Dungeon-HUD ist die "1" von "1F"; "B" und "F" selbst sind statische BG-Tiles bei
row16/17, col16 bzw. col19 — grep nach `$9a90`/`$9a91`-artigen Adressen bringt daher nichts).

**Ausprobiert, ohne Erfolg:**
- Die kreisförmige "Loch"-Struktur in der Test-Dungeon-Karte (`scratch/states/dungeon.state`)
  ist eine solide 3×3-Plattform **ohne begehbaren Zugang** (von allen 4 Seiten blockiert,
  kein Scrollen über die Raumgrenze hinaus feststellbar) — vermutlich reine Deko, keine
  echte Treppe. Ohne einen echten Etagenwechsel im Spiel lässt sich die VRAM-Diff-Methode
  (die bei HP funktioniert hat) nicht anwenden.
- Alle WRAM-Bytes mit Wert `1` im Bereich `$c100`-`$c150` (9 Kandidaten: `c100,c101,c102,
  c104,c106,c115,c125,c140,c14f`) einzeln auf `2` gepoked: keiner zeigt "2F". `$c125`=2
  **blendet die Ziffer komplett aus** (zeigt "B  F", kein Zeichen) — hängt also mit dieser
  Anzeige zusammen, ist aber vermutlich ein Render-Zustands-Flag, nicht der Zähler selbst.
- `Call_000_32b2`/`Call_000_32b9` (generische Sprite-Positionierungsroutine, bank_000.asm)
  wird beim Dungeon-Eintritt 54× aufgerufen — offenbar für viele verschiedene HUD-Sprites
  gemeinsam genutzt, nicht spezifisch für die Etagenziffer; Hook dort lieferte keinen
  eindeutigen Hinweis.
- Das vermeintliche OAM-Shadow-Buffer-Match bei `$da9c`/`$db9c`/`$dc9c`/`$dd30`/`$dd7c`
  (Y=144,X=152,Tile=18 in Hardware-Rohwerten) gehört zu den bereits bekannten
  Mehrfach-Puffern bei `$da00`-`$dd00` (siehe `Call_000_2fb7`, Hintergrund-Scroll-Kopie) —
  nicht eindeutig der Etagenzähler-Quelle zuordenbar.

**Realistischer nächster Schritt:** Eine echte Dungeon mit erreichbarer Treppe finden (evtl.
bei einem anderen Quest-Typ, oder durch Abschluss des Missionsziels wird die Treppe
freigeschaltet) und dort die VRAM/OAM-Diff-Methode anwenden — dieselbe Technik, die bei HP
und Gold funktioniert hat, braucht nur ein echtes Vorher/Nachher-Ereignis.

**User-Hinweis (Edward):** Laut seinem Wissen muss man für den Etagenwechsel nur "die
Treppe finden und begehen" — kein Freischalten durch Missionsziel nötig. Die kreisförmige
Plattform in `dungeon.state` ist demnach wahrscheinlich NICHT die Treppe, sondern
tatsächlich nur Deko — die echte Treppe muss anderswo im (bisher nicht vollständig
erkundeten) Raum oder in einem angrenzenden Raum liegen. Nächstes Mal: Raum vollständiger
abgehen (wir hatten nur die Top-Wand als Grenze bestätigt, nicht alle 4 Seiten/Ecken) statt
anzunehmen, die Plattform sei die Treppe.

## Spieler-Tod / Game-Over-Screen

Bei `wPlayerHP` = 0 verschwindet der Spieler-Sprite sofort (kein Sterbe-Animation-Delay),
das Spiel läuft noch ein paar Frames weiter (Monster bewegt sich, zeigt z. B. den
"2"-Schadens-Popup von einem letzten Gegenangriff), dann erscheint der Game-Over-Screen:

> **残念！！**
> **もう1回 チャレンジ！！**
> ("Schade!! Nochmal versuchen!!") — mit Sphären-Grafik und Spieler-Sprite unten.

**A drücken** → zurück zum **Guild-Menü** (kein Permadeath, keine Bestrafung sichtbar,
einfache "Nochmal versuchen"-Schleife zurück zum Hauptmenü).

**Trigger-Code noch nicht lokalisiert:** Im unmittelbaren Schadens-Anwendungscode
(`jr_001_5ba3_SubtractDamageFromHP`, bank_001.asm $5ba3) wird nach dem Abzug geprüft:
```
cp $04 ; ret nc      ; HP >= 4 → nichts weiter
or a   ; ret z        ; HP == 0 → ebenfalls nichts weiter (!)
```
Nur der Bereich HP 1-3 löst hier einen Zusatzeffekt aus (vermutlich Warnton/Blinken bei
niedriger Lebensenergie, über eine Tabelle bei `$5bc7` + `Jump_000_00d9`). **HP==0 wird
hier explizit NICHT behandelt** — der eigentliche Game-Over-Trigger muss also zentral in
der Haupt-Spielschleife liegen (vermutlich ein "nach jedem Zug: prüfe ob Spieler tot"-Check),
nicht direkt im Schadenscode selbst. Noch nicht gefunden, wo genau.

Gespeicherter State: `scratch/states/death.state` (Frame des Todes),
`scratch/states/gameover.state` (fertiger Game-Over-Screen).

## Etagentiefe — Update: Methodik "speicherbasierter Explorer" gebaut

**Spielerposition im RAM gefunden** (per OAM-Regression, gleiche Methode wie bei Monster-
Position): `$c503` = aktuelle Y-Kachel, `$c504` = aktuelle X-Kachel (Faktor 16 = Pixel,
keine Offsets). Bestätigt exakt gegen OAM-Sprite-Position.

**Echtes Teleportieren (direktes Schreiben von `$c503`/`$c504`) funktioniert NICHT** — ein
Raster-Scan über alle plausiblen Werte ergab fast nirgends gültige Bewegung danach. Das
sind vermutlich nur Render-Cache-Werte für die OAM-Darstellung, nicht die kollisions-
maßgebliche interne Position (die vermutlich in Pixel-Subauflösung oder einer anderen
Struktur liegt, nicht weiter verfolgt).

**Stattdessen: bildschirmfreier Explorer per Tastendruck + Positionsvergleich.** Kollision
wird rein durch "Position vor/nach Tastendruck gleich? → blockiert" erkannt, ganz ohne
Screenshot-Interpretation. Wichtige Lektion dabei: Die deterministische Monster-
Verfolgungs-KI (siehe "Zufalls-Mechanismus GELÖST") zielt aktiv auf die Spielerposition —
bei repetitivem Testen am selben Ort "campt" das Monster dort und täuscht Wände vor, die
keine sind. Lösung: `$c120` (HP) künstlich auf `0x99` setzen (Unverwundbarkeit während der
Exploration) plus DFS statt BFS (weniger Rückkehr zum selben Feld, weniger Chancen für die
KI, sich dort festzusetzen).

**Ergebnis für Quest 1 (Monster-Kill), Level 1:** Nach mehreren DFS-Läufen mit
unterschiedlicher Richtungspriorität (um Sackgassen-Bias zu vermeiden) wurde der gesamte
erreichbare Bereich kartiert — alle Randfelder sind an allen 4 Seiten blockiert, **keine
Treppe gefunden**. Kartierte Fläche (x=1-8, y=1-6, `#`=bestätigt begehbar):
```
#.......
########
..#....#
####...#
########
#......#
```
Der Lückenbereich bei x=6-7,y=3-4 entspricht der kreisförmigen Plattform (3x3-Struktur,
massiv, kein Zugang).

**Schlussfolgerung:** Dieser spezifische Dungeon (Monster-Kill-Quest Lvl 1) hat vermutlich
**keine Treppe/Etagenübergang** — passt zu einem einfachen "töte 3 Monster"-Ziel ohne
Tiefenfortschritt. Mögliche nächste Schritte: (a) Missionsziel abschließen und prüfen, ob
danach eine Treppe erscheint, (b) einen anderen Quest-Typ (Gold/Schwert/Orb) auf
Etagenübergänge testen, da diese ggf. mehrstöckig sind.

## Etagentiefe GELÖST: `$c104` = `wCurrentFloor`

**Durchbruch dank User-Input zu den Spielregeln:** Treppen erfordern "draufstellen + A
drücken" (nicht einfach hineinlaufen!) — deshalb fand die reine Richtungs-Bewegungs-Suche
nie eine Treppe. Das erklärte auch, warum der Monster-Quest-Testraum (Quest 1, Level 1)
keine Treppe zu haben schien: Dort gibt es tatsächlich keine (siehe unten) — im
**Gold-Quest-Dungeon** (Säulen-Layout) dagegen schon.

**Methode — "echter speicherbasierter Explorer" (ohne Bildinterpretation für die
Navigation selbst):**
1. Spielerposition aus RAM lesen (`$c503`/`$c504`), DFS-Kartierung per Tastendruck +
   Positionsvergleich (kein Screenshot nötig), `$c120`=`0x99` für Unverwundbarkeit
   während der Erkundung (neutralisiert die Monster-Verfolgungs-KI als Störfaktor).
2. An jedem kartierten Feld **A gedrückt** und die VRAM-Tilemap-Signatur (erste 80 Byte
   ab `$9800`) mit der bekannten "Item-Menü"-Signatur verglichen — nur bei Abweichung
   einen Screenshot gespeichert (3 von 42 Feldern in Gold-Dungeon wichen ab).
3. Feld `(6,1)` im Gold-Dungeon zeigte nach A einen Screenshot mit **"B 2F"** — echter
   Etagenwechsel ausgelöst!
4. WRAM-Diff vor/nach dem Wechsel (gefiltert auf "war 1, hat sich geändert"):
   `$c001`,`$c002` (1→2, aber generische System-/Bank-Variablen, schon beim Boot
   referenziert — nicht die Etage), `$c104` (1→2, starker Kandidat).
5. Per PyBoy-Hook bestätigt: `Call_000_0ec9_DrawFloorNumberTile` (bank_000.asm, $0ec9)
   feuert **genau beim Etagenwechsel** und liest `$c104` (=2 beim Hook-Treffer), zeichnet
   es als einzelne Ziffer nach VRAM `$98e9` (Tile-Basis `$10`, anderer Font als die
   `$9e`-Basis von HP/Gold/Monster-Zähler).

**Wichtige Lektion:** `Call_000_0ec9` wurde in einer früheren Session fälschlich als
"toter Code" eingestuft, weil er im Monster-Kampf-Kontext nie feuerte. Er ist aber
völlig real — nur kontextabhängig (nur bei Etagenwechsel-Ereignissen aktiv). **"Nie
getroffen in diesem Testszenario" ≠ "nie ausgeführt im Spiel"** — immer mit dem
relevanten Spielereignis dynamisch verifizieren, nicht pauschal verwerfen.

**Ergebnis:** `wCurrentFloor EQU $c104` in `src/bank_000.asm` definiert, Routine
umbenannt zu `Call_000_0ec9_DrawFloorNumberTile`. Rebuild bit-identisch.

**Zum Monster-Quest-Testraum (Quest 1, Level 1) ohne Treppe:** Laut User-Infos sollten
Treppen "von Anfang an frei zugänglich" sein. Nach jetzt sehr gründlicher Kartierung +
A-Test an praktisch jedem Feld hat dieser spezielle Raum trotzdem keine gefunden — bleibt
als Anomalie offen (evtl. quest-typ-spezifisch, evtl. Dungeon-Generierungs-Sonderfall für
"Level 1"). Nicht weiter verfolgt, da die Methode am Gold-Dungeon erfolgreich war.

## Etagentiefe GELÖST: `$c104` = `wCurrentFloor`

**Durchbruch dank User-Input zu den Spielregeln:** Treppen erfordern "draufstellen + A
drücken" (nicht einfach hineinlaufen!) — deshalb fand die reine Richtungs-Bewegungs-Suche
nie eine Treppe. Das erklärte auch, warum der Monster-Quest-Testraum (Quest 1, Level 1)
keine Treppe zu haben schien: Dort gibt es tatsächlich keine (siehe unten) — im
**Gold-Quest-Dungeon** (Säulen-Layout) dagegen schon.

**Methode — "echter speicherbasierter Explorer" (ohne Bildinterpretation für die
Navigation selbst):**
1. Spielerposition aus RAM lesen (`$c503`/`$c504`), DFS-Kartierung per Tastendruck +
   Positionsvergleich (kein Screenshot nötig), `$c120`=`0x99` für Unverwundbarkeit
   während der Erkundung (neutralisiert die Monster-Verfolgungs-KI als Störfaktor).
2. An jedem kartierten Feld **A gedrückt** und die VRAM-Tilemap-Signatur (erste 80 Byte
   ab `$9800`) mit der bekannten "Item-Menü"-Signatur verglichen — nur bei Abweichung
   einen Screenshot gespeichert (3 von 42 Feldern in Gold-Dungeon wichen ab).
3. Feld `(6,1)` im Gold-Dungeon zeigte nach A einen Screenshot mit **"B 2F"** — echter
   Etagenwechsel ausgelöst!
4. WRAM-Diff vor/nach dem Wechsel (gefiltert auf "war 1, hat sich geändert"):
   `$c001`,`$c002` (1→2, aber generische System-/Bank-Variablen, schon beim Boot
   referenziert — nicht die Etage), `$c104` (1→2, starker Kandidat).
5. Per PyBoy-Hook bestätigt: `Call_000_0ec9_DrawFloorNumberTile` (bank_000.asm, $0ec9)
   feuert **genau beim Etagenwechsel** und liest `$c104` (=2 beim Hook-Treffer), zeichnet
   es als einzelne Ziffer nach VRAM `$98e9` (Tile-Basis `$10`, anderer Font als die
   `$9e`-Basis von HP/Gold/Monster-Zähler).

**Wichtige Lektion:** `Call_000_0ec9` wurde in einer früheren Session fälschlich als
"toter Code" eingestuft, weil er im Monster-Kampf-Kontext nie feuerte. Er ist aber
völlig real — nur kontextabhängig (nur bei Etagenwechsel-Ereignissen aktiv). **"Nie
getroffen in diesem Testszenario" ≠ "nie ausgeführt im Spiel"** — immer mit dem
relevanten Spielereignis dynamisch verifizieren, nicht pauschal verwerfen.

**Ergebnis:** `wCurrentFloor EQU $c104` in `src/bank_000.asm` definiert, Routine
umbenannt zu `Call_000_0ec9_DrawFloorNumberTile`. Rebuild bit-identisch.

**Zum Monster-Quest-Testraum (Quest 1, Level 1) ohne Treppe:** Laut User-Infos sollten
Treppen "von Anfang an frei zugänglich" sein. Nach jetzt sehr gründlicher Kartierung +
A-Test an praktisch jedem Feld hat dieser spezielle Raum trotzdem keine gefunden — bleibt
als Anomalie offen (evtl. quest-typ-spezifisch, evtl. Dungeon-Generierungs-Sonderfall für
"Level 1"). Nicht weiter verfolgt, da die Methode am Gold-Dungeon erfolgreich war.

## Geheimgänge im Monster-Quest-Testraum — gesucht, nicht gefunden

Nach User-Hinweis: Geheime Wände zeigen eine "?"-Sprechblase, wenn man direkt davor/
diagonal danebensteht, und öffnen sich durch wiederholtes Hineinlaufen (kein A nötig).

**Durchgeführte Suche** (im vollständig kartierten Monster-Quest-Raum, 29 Felder):
1. Visuell an allen 4 Raumecken (`(1,1)`,`(8,1)`,`(1,6)`,`(8,6)`) geprüft — kein "?" sichtbar.
2. Programmatischer OAM-Scan an jedem der 29 Felder × jeder *tatsächlich* blockierten
   Richtung (Positionsvergleich vor Prüfung, um Fehlalarme durch unentdeckte-aber-begehbare
   Kanten auszuschließen): Suche nach unbekannten Sprite-Tile-IDs → 0 Treffer.
3. Zweiter Versuch mit Sprite-**Anzahl**-Vergleich (statt Tile-ID) vor/nach Anstoßen: 5
   Treffer, aber alle Screenshot-verifiziert als **Fehlalarm durch das zufällig
   danebenstehende Monster** (dessen eigene OAM-Sprites die Zählung verfälschen), keine
   echte Geheimgang-Markierung.

**Ergebnis:** In diesem spezifischen Raum wurde kein Geheimgang gefunden. Entweder hat
dieser Raum tatsächlich keinen (konsistent mit der bereits dokumentierten Treppen-Anomalie
für denselben Raum), oder die Markierung sitzt an einer Stelle außerhalb der 29 kartierten
Felder (z. B. direkt neben der zentralen Plattform, die wir nur von 4 Außenseiten, nicht
diagonal, geprüft haben).

**Hinweis für nächstes Mal:** Die Plattform-Struktur (`$c5c0`-Bereich, siehe Monster-KI-
Abschnitt) selbst nie auf Geheimgang-Interaktion getestet — nur als massive Wand
behandelt. Könnte selbst der Ort eines "Fake Pit" oder einer versteckten Interaktion sein.
