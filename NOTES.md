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
- [x] Monster-Datentabelle (Task #6) — HP-Feld gefunden (Offset `$06`), Typ `$01`=Crab identifiziert.
- [x] Dungeon-Sonderfelder (Task #7) — Tile-Klassen-Dispatcher + 3 Warnsymbol-Checks gefunden, Lava/Tür/Dunkelheit offen.
- [x] Basis-Stats-Tabelle gefunden (`BaseStatsByLevel`, bank_000.asm $31c8+) — siehe unten.
- [x] Quest-Ziel-Tabellen pro Level gefunden (ROM-Bank 2, `$6e10`-`$6e37`) — siehe unten.
- [x] Lucky-Stat/Trefferchance (Task #10).
- [x] Item-System (Task #11).

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

**Trigger-Code GEFUNDEN:** Im unmittelbaren Schadens-Anwendungscode
(`jr_001_5ba3_SubtractDamageFromHP`, bank_001.asm $5ba3) wird nach dem Abzug geprüft:
```
cp $04 ; ret nc      ; HP >= 4 → nichts weiter
or a   ; ret z        ; HP == 0 → ebenfalls nichts weiter (!)
```
Nur der Bereich HP 1-3 löst hier einen Zusatzeffekt aus (vermutlich Warnton/Blinken bei
niedriger Lebensenergie, über eine Tabelle bei `$5bc7` + `Jump_000_00d9`). **HP==0 wird
hier explizit NICHT behandelt** — wie vermutet liegt der eigentliche Trigger zentral in der
Haupt-Spielschleife, nicht im Schadenscode selbst.

Alle Leser von `wPlayerHP` (`$c120`) in bank_000.asm/bank_001.asm durchsucht. Gefunden in der
Haupt-Zug-Update-Routine (`src/bank_000.asm`), **zwei** `HP==0`-Prüfungen direkt nach den
beiden Haupt-Unterroutinenaufrufen pro Zug:
```
call Call_000_3355
ld a, [$c120]
or a
jp z, Jump_000_0c13_TriggerGameOver ; $0b37
...
call Call_000_3734
ld a, [$c120]
or a
jp z, Jump_000_0c13_TriggerGameOver ; $0b4d
```
`Jump_000_0c13_TriggerGameOver` ($0c13) macht:
1. Erzwingt HP auf 0 über einen künstlichen Riesen-Treffer (`e = $99`) durch die normale
   Schadens-Abzugsroutine (`call $5ba3`) — redundante Absicherung, falls HP durch den Aufrufer
   noch nicht exakt 0 ist.
2. Setzt den Haupt-Spielzustands-Dispatcher `$c100` auf `$09` → das ist der Zustand, der den
   "残念!! もう1回 チャレンジ!!"-Screen zeichnet/anzeigt.
3. Setzt `$c149 = $40` (Frame-/Animationszähler, siehe unten) und spielt den Verlust-Jingle
   über das bekannte Sound-Trampolin (`Call_000_00d9`/`Jump_000_00d9`).

**Dritte Aufrufstelle, andere Bedingung:** Bei $0d4c gibt es einen dritten Sprung zu
`Jump_000_0c13_TriggerGameOver`, aber **nicht** über eine `wPlayerHP`-Prüfung, sondern über
einen generischen Countdown: `ld hl, $c149; dec [hl]; jp z, ...`. `$c149` ist derselbe
Zähler, den der Trigger selbst auf `$40` setzt — dieser Code-Block gehört zu einem anderen
Spielzustand (Countdown-/Timeout-Mechanik, z. B. eine zeitbasierte Todesursache wie Gift oder
Hunger) und wurde nicht weiter zurückverfolgt, da die HP-basierten Haupttrigger das eigentliche
Ziel der Untersuchung waren.

Rebuild nach Umbenennung (`Jump_000_0c13` → `Jump_000_0c13_TriggerGameOver`, plus Kommentare)
bleibt bit-identisch (MD5 `10d92861e262069ce31559e12b927aa0`).

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

## Neue Aufgaben aus externen Wiki-Infos (strategywiki.org, siehe `temp/`)

Nutzer hat drei Wiki-Seiten (Gameplay, Monster-Liste, Walkthrough) bereitgestellt
(`temp/cave_noir_*_strategywiki.md`). Daraus abgeleitete, priorisierte Aufgabenliste
(Tasks #6-#11 im Task-Tracker): Monster-Tabelle → Dungeon-Sonderfelder → Basis-Stats →
Quest-Ziel-Tabellen → Lucky-Stat → Item-System.

## Monster-Struct-Layout — Zwischenstand (Task #6, noch nicht abgeschlossen)

**Bestätigt (statische Analyse + Vergleich über 4 verschiedene Savestates/Dungeons):**

- Monster-Array liegt bei `$c5c0`-`$c800`, **16 Byte pro Eintrag, bis zu 36 Slots**
  (`$24` × `$10`), bestätigt über die periodische Update-Schleife `Call_001_4946`/
  `Call_001_4960` (bank_001.asm, feuert alle 16 Ticks über `$c23b and $0f`) und die
  Reset-Schleife `Call_001_4b57`/`Call_001_4b95` (je `ld hl,$c5c0; ld b,$24; ld de,$0010`).
- **Offset `$00`**: Slot-Belegungs-Flag — `or a; ret z` beendet die Verarbeitung sofort,
  wenn hier `0` steht (leerer Slot). In allen 4 getesteten Savestates `6` (gleicher
  Monstertyp in jedem Test-Dungeon).
- **Offset `$01`**: Monstertyp-ID — wird direkt gegen `$c420` (aktuell verarbeiteter Typ
  in der Zug-Dispatch-Schleife) verglichen (`cp c` mit `c = [$c420]`, siehe
  `Call_001_4b7e`/`Call_001_4bb5`). In allen 4 Tests `1`.
- **Offset `$02`/`$03`**: Positions-Tile (Reihe/Spalte) — per OAM-Sprite-Abgleich
  verifiziert (Sprite-Pixel-Position / 16 == Struct-Wert). Welches der beiden Reihe vs.
  Spalte ist, ist noch nicht hundertprozentig zugeordnet (Bewegungsmuster des Test-
  Monstertyps deutete auf Spalten-Bewegung, siehe unten).
- **Offset `$04`**: **Kein Positions-/Kampf-Feld, sondern ein reiner Blink-/Animations-
  Toggle**: `Call_001_4960` XOR-t Offset `$04` mit Offset `$05` alle 16 Ticks
  (`ld a,[hl+]` über Offsets 1-3, dann `inc l` ×3 auf Offset 4, `xor [hl]` mit Offset 5,
  zurückschreiben). Oszilliert deshalb sichtbar zwischen `0`/`2`, hat aber nichts mit der
  RNG/Trefferchance-Mechanik zu tun (Verwechslungsgefahr mit Offset `$0f`, das denselben
  0/2-Oszillationsmuster zeigt, aber tatsächlich der dokumentierte Richtungs-/RNG-Zähler ist).
- **Offsets `$05`-`$09`**: In allen 4 Tests identisch (`2,5,4,2,5`) trotz unterschiedlicher
  Dungeons/Etagen/Quests — vermutlich statische Typ-Attribute (Schaden, evtl. Angriff/
  Verteidigung/Lucky-ähnliche Werte), die beim Spawn aus einer ROM-Tabelle in den Slot
  kopiert werden (passend zur bekannten `Call_001_518a`-Generic-Lookup-Funktion:
  `ld a,[$c102]; rst RST_28; ld a,[hl]; ret`, die an mehreren Stellen in genau so eine
  Tabelle indexiert, u. a. für den Schadenswert `$c529`).
- **Offset `$0f`**: bereits dokumentiert (Zufalls-Mechanismus GELÖST oben) — 2-3-Bit
  Richtungs-/Zustandsfeld, zugleich Pseudo-Zufallsquelle.

## Monster-Struct-Layout GELÖST (Task #6): Offset `$06` = aktuelle HP, `$09` = Basis/Max-HP

**Methode:** Echter, erfolgreicher Nahkampftest per PyBoy, diesmal mit funktionierender
Navigation. Durchbruch-Erkenntnisse zur Steuerung (vorher nicht bekannt):
1. Die bewährte DFS/Positions-Vergleichs-Methode aus der Etagentiefe-Suche (`$c503`/`$c504`
   lesen, Taste drücken, Position vergleichen) wurde als BFS-Explorer neu aufgesetzt
   (`scratch/gold_dfs_new.pkl`), um im Gold-Dungeon-Savestate einen begehbaren Pfad bis
   neben das Monster zu kartieren — diesmal mit Rückkehr-Pfadsuche zwischen den DFS-Ästen
   (vorherige Sitzungen hatten keine Rückkehr-Logik, liefen sich in Ecken fest).
2. **Wichtige Erkenntnis zur Kampf-Eingabe:** Reines Bump-Movement in Richtung Monster löst
   **keinen** Angriff aus (die Position bleibt unverändert, aber auch sonst passiert nichts).
   Angriff erfordert **Richtungstaste (zum Ausrichten) gefolgt von A** — passt zur Wiki-
   Beschreibung "perform an action such as attack" als eigene Aktion, nicht reines Hineinlaufen.
3. **Der `$c120`=`0x99`-Unverwundbarkeits-Trick aus der Etagentiefe-Suche ist beim Kämpfen
   NICHT sicher**: Er funktioniert einwandfrei für reine Bewegungs-Exploration, verursacht
   aber im Kampf-Animationszustand (`$c125`=`14`) einen Glitch, der die HP danach pro Tick
   kontinuierlich dekrementiert (vermutlich eine HP-Bar-Füllanimation, die nie ihr Ziel
   erreicht, weil der Wert `0x99` weit über der echten `wPlayerMaxHP` liegt). Für die Kampf-
   Tests deshalb bewusst mit echter HP gearbeitet (Level 1 = `0x10`, Risiko durch kurze
   Tests und Savestate-Reload begrenzt).

**Ergebnis (zwei unabhängige Kampftests, `gold_dungeon.state` und `combat2.state`, beide
Monstertyp `$01`):**

```
gold_dungeon.state, Monstertyp $01, vor Kampf: Offset $06=5, $09=5
  Treffer 1 (Spieler→Monster): Offset $06  5 → 3   (Schaden 2)
  Gegentreffer (Monster→Spieler): wPlayerHP 0x10 → 0x08  (Schaden 2)
  Treffer 2 (Spieler→Monster): Offset $06  3 → 0, Offset $00 (Slot-Flag) 6 → 0 (Monster besiegt)

combat2.state, Monstertyp $01, vor Kampf: Offset $06=5, $09=5
  Treffer 1: Offset $06  5 → 2   (Schaden 3)
  Gegentreffer: wPlayerHP 0x10 → 0x06  (Schaden 4)
  Treffer 2: Offset $06  2 → 1   (Schaden 1)
  Gegentreffer: wPlayerHP 0x06 → 0x04  (Schaden 2)
  Treffer 3: Offset $06  1 → 0, Offset $00 6 → 0 (Monster besiegt)
```

**Schlussfolgerung:**
- **Offset `$06` = aktuelle Monster-HP** (BCD, nicht-negativ, bei 0 wird der ganze Slot
  gelöscht — `$00` fällt dabei ebenfalls auf `0`).
- **Offset `$09` = Basis-/Max-HP** des Monstertyps — bei beiden frisch angetroffenen,
  unbeschädigten Monstern identisch zu Offset `$06` (`5`), wird aber im Kampf nicht
  verändert (reiner Referenzwert, vermutlich aus der Typ-Tabelle beim Spawn kopiert).
- Die variierenden Schadenswerte (2/2/3/4/1/2) in den beiden Tests bestätigen die in Task
  #10 gefundene Schadensformel (`Call_001_5c47`/`Call_001_5c75`/$5c8a-$5cde: Angriff/
  Verteidigung-basierte Ganzzahl-Arithmetik mit variablem Skalierungsfaktor `$c539 and $1f`,
  kein fester Wert) — die frühere "Schaden ist immer exakt 2"-Beobachtung (siehe "Zufalls-/
  Trefferchancen-Suche" oben) war ein Zufallstreffer eines einzelnen Testfalls, nicht die
  allgemeine Regel.
- **Bewegungsmuster-Abgleich:** Monstertyp `$01` bewegt sich ausschließlich horizontal
  (Offset `$03`/Spalte oszilliert, Offset `$02`/Reihe bleibt konstant) — passt exakt zum
  Wiki-Eintrag **"Crab (クラブス): HP 5, moves left and right"**. HP 5 und Bewegungsmuster
  stimmen beide überein → **Monstertyp-ID `$01` = Crab** (hohe Konfidenz).

**Noch offen (nicht weiter verfolgt, Zeitrahmen dieser Session):**
- Die ROM-Tabelle, die Offsets `$05`,`$07`,`$08`,`$09` (und ursprünglich `$06`) beim Spawn
  aus dem Monstertyp befüllt, wurde nicht lokalisiert — nötig, um alle 23 Wiki-Monster den
  internen Typ-IDs zuzuordnen (bisher nur Typ `$01`=Crab via HP+Bewegung identifiziert).
  `Call_001_518a` (bank_001.asm, $518a) ist **kein** Typ-Lookup, sondern indiziert über
  `$c102` (aktuelles Level) — eine falsche Spur aus dem vorherigen Zwischenstand, hiermit
  korrigiert.
- Bedeutung von Offset `$00` jenseits von "`0`=leer/besiegt, ungleich `0`=belegt" (konkret
  immer `6` bei lebendigen Monstern in allen Tests) nicht geklärt — könnte eine Typ-
  Kategorie oder ein Konstantenwert ohne tiefere Bedeutung sein.
- Offsets `$05`/`$07`/`$08` (Werte `2`/`4`/`2`, in beiden Tests identisch) vermutlich
  Angriff/Verteidigung/Lucky-ähnliche Typ-Attribute, nicht einzeln zugeordnet.

Keine Code-Änderungen (reine RAM-Struct-Dokumentation per Emulation, keine neue ROM-Tabelle
mit Adresse gefunden). NOTES.md-only, kein Rebuild nötig.

## Dungeon-Sonderfelder (Task #7) — Zwischenstand: $c149 ist NICHT der Bodenbruch-Timer

Hypothese aus der Game-Over-Recherche (dass der dritte `TriggerGameOver`-Aufrufpfad bei
`$0d4c` über einen Bodenbruch-Countdown läuft) **widerlegt**: `$c149` wird an mindestens
8 verschiedenen Stellen in bank_000.asm gesetzt/gelesen (`$0bd6`,`$0c2c`,`$0c8a`,`$0cc6`,
`$0d0f`,`$0d20`,`$0d48`,`$0d6c`,`$0daa`), jede davon im Kontext eines *anderen*
`$c100`-Hauptzustands (z. B. `$0c2c` direkt im Game-Over-Trigger selbst, `$0bd6` in einem
Übergangsscreen mit Sound-Setup). **`$c149` ist ein generischer "warte N Frames, dann
Zustand X"-Timer, der von vielen Spielzuständen wiederverwendet wird** — keine
Tile-/Bodenbruch-spezifische Variable. Die "!!"-Bodenbruch-Mechanik muss stattdessen in
den Tile-/Kollisions-Routinen der eigentlichen Spielschleife liegen (analog zu
`Call_000_2eee`/`Call_000_2f25`, den bekannten Tile-Lookup-Routinen aus der Monster-
Bewegung), noch nicht lokalisiert. Benötigt vermutlich einen Savestate, der tatsächlich
auf einer bröckelnden Kachel steht, um dynamisch zu verifizieren — in den aktuellen
Savestates nicht vorhanden.

## Dungeon-Sonderfelder — Tile-Klassen-Dispatcher gefunden (Task #7, Fortsetzung)

**Zentraler Fund:** `Call_000_2ef1` (bank_000.asm, $2ef1, bereits für die Monster-Kollision
bekannt) liefert über `[$c241] and $7f` eine **"Tile-Klasse"** für das Feld in Bewegungs-
richtung. Der Haupt-Dispatcher dafür liegt direkt im Bewegungs-Ausführungscode (ca. $3698ff,
bank_000.asm) und setzt je Klasse den Haupt-Spielzustand `$c126`:

| Tile-Klasse (`$c241 and $7f`) | Ziel-Zustand `$c126` | Mechanik | Status |
|---|---|---|---|
| `$07` | `3` | nicht weiter verfolgt | offen |
| `$08` | ruft `$5d40` (Quest-Typ-Tabelle), dann `$0b` | **Treppe** — `$5d40` ist dieselbe aus der Etagentiefe-Suche bekannte Routine | **bestätigt** (Wiederverwendung eines bereits dynamisch verifizierten Funds) |
| `$0a` | → `jr_000_36e0`, dort `$09` | **Item-/Chest-Aufsammeln** (Task #11) | **bestätigt** (Wiederverwendung) |
| `$0b` | ruft `$408a`, dann `$0c` | **Warp** — liest ein Adresspaar `$c427`/`$c428` ("Partnerposition"), vergleicht die aktuelle Position gegen beide und benutzt per `Call_000_2db5`/Wort-Tabelle bei `$206b` die jeweils andere als neue Zielkoordinate (`$c50b`/`$c50c`) | **neu, plausibel, nicht dynamisch getestet** |
| sonst | `4` | normaler begehbarer Boden | — |

**Drei Warnsymbol-Checks identifiziert** (alle folgen demselben Muster: zufallsbasierter
Trigger über `Call_000_3e08` + Vergleich der Zielfeld-Tile-ID gegen ein typ-spezifisches
ID-Paar, bei Treffer Zeichnen eines kleinen 2-Tile-Symbols oberhalb des Spielers über einen
gemeinsamen Hilfscode (`jr_000_332d`, schreibt Positions-/Tile-Daten nach `$da00`-`$da0f`,
dem bekannten OAM-Shadow-Puffer):

| Einstiegspunkt | Tile-ID-Paar (`$c24e`/`$c24f`) | Symbol-Tile-ID | Wiki-Übereinstimmung |
|---|---|---|---|
| `Call_000_2f3f` → `Call_000_3787` → `Jump_000_3323` | `$1d`/`$23` | `$5a` | **"!!"-Bodenbruch-Warnung** ("ground is cracking") |
| `Call_000_2f48` → (Schleife über alle 4 Richtungen, bank_000.asm $3759ff) → `Jump_000_3327` | `$09`/`$7f` | `$42` | **"?"-Geheimwand-Warnung** ("wall can be broken") |
| — → `Call_000_3772` (direkter, nicht-zufälliger Tile-Check `==$0f`) → `Jump_000_332b` | — | `$56` | **Jump-Icon** ("jumping person" über einer überspringbaren Grube) |

Die Zuordnung basiert auf der strukturellen Übereinstimmung (zufällig vs. deterministisch,
3 unterschiedliche Symbol-Tiles, passend zu den 3 im Wiki beschriebenen Boden-Warnsymbolen)
und ist **statisch hergeleitet, aber nicht dynamisch verifiziert** — ein PyBoy-Test (60
Schritte Hin-und-Her auf zwei Kacheln im Gold-Dungeon, OAM-Tile-IDs mitgeloggt) zeigte keines
der drei Symbole, vermutlich weil in diesem konkreten Testraum keine der benötigten
Boden-Subtypen vorkommen oder die Zufallschance zu niedrig für 60 Versuche war. Als nächster
Schritt bräuchte es einen Savestate mit einem tatsächlich bröckelnden Boden, um das sicher
zu bestätigen.

**Zwei weitere, strukturell identische "Scanne alle 4 Richtungen nach Tile-ID X"-Routinen**
gefunden (`Call_000_2f48` von `bank_001.asm:$53a2`, `Call_000_2f4c` von `bank_001.asm:$572c`,
beide im Item-Effekt-Bereich aus Task #11) — vermutlich die Umsetzung von **"Ganseki" (Grube
füllen/Felsbarrikade)** bzw. **"Oriru" (Treppe auf Nachbarfeld setzen)**, die jeweils ein
angrenzendes Feld mit passendem Tile-Typ suchen müssen. Nicht einzeln verifiziert.

**Nicht gefunden (Zeitrahmen dieser Session):**
- **Lava** ("lose all HP if fall in") — keine dedizierte Tile-Klasse identifiziert.
- **Tür** (Dungeon-Ausgang) — keine dedizierte Tile-Klasse identifiziert; vermutlich eine
  weitere Tile-Klasse im selben Dispatcher (`$07`?), nicht weiter verfolgt.
- **Fairy Cage** (mit Schlüssel entsperren) — nicht untersucht.
- **Dunkelheit/Fackel-Mechanik** (vom User explizit erfragt: dunkle Räume mit 1-2 Feld
  Sichtradius, per Akari-Item oder Flame-Eye-Besiegen aufhellbar): **nicht gefunden.**
  Kein Hinweis auf eine "sichtbares Feld"-Bitmap oder Sichtradius-Berechnung in den
  untersuchten Bereichen (`Call_000_2fb7`/`Call_000_2ff6`, die Dreifach-Puffer-Scroll-Kopie
  bei `$da00`-`$dd00`, sind generische Hintergrund-Scroll-Hilfsfunktionen, keine Sicht-
  radius-Logik). Würde wahrscheinlich eine eigene, noch nicht untersuchte Rendering-Routine
  für den Dungeon-Raum selbst erfordern (die eigentliche "zeichne Raum aus Dungeon-Layout"-
  Funktion wurde in dieser Session nicht lokalisiert) — guter Ausgangspunkt für eine
  Folge-Session: nach einer Routine suchen, die pro Kachel die Distanz zur Spielerposition
  prüft, bevor sie zeichnet statt eine leere/dunkle Kachel.

Keine Code-Änderungen (reine Dokumentation, Erkenntnisse basieren auf bereits vorhandenem
Disassembly-Text ohne neue `db`-Konvertierungen). Kein Rebuild nötig.

## Dunkelheit/Fackel-Mechanik — Grafik-Suche (kein Treffer, Ansatz dokumentiert)

User lieferte einen Referenz-Screenshot (`temp/cave-noire-game-boy-45-2254664308.png`,
Quest B, Etage 4F): ein unregelmäßiges, dichtes Punktmuster verdunkelt einen Teil des Raums,
ein Gegner ist darin nur als weißes Augenpaar ("Ⓥ"-Form) sichtbar — passt exakt zur Wiki-
Beschreibung ("Monsters can still be seen as eyes [...] until they move out of the darkness").
Laut User tritt die Dunkelheit **erst auf tieferen Etagen** auf.

**Versuchte Methode:** Die VRAM-Tile-Grafiken aus `gold_dungeon.state` (Etage 1, Quest Gold)
wurden komplett ausgelesen und gerendert (PyBoy, manueller 2bpp-Decoder über `mem[0x8000+id*16]`
— `pyboy.get_tile()`/`Tile.image()` liefert in dieser PyBoy-Version nur schwarze Bilder,
vermutlich ein Palette/BGP-Bug in der installierten Version, daher direkter VRAM-Zugriff als
Workaround). Alle 384 Hintergrund-Kacheln wurden nach "Dither-/Schachbrettmuster-Ähnlichkeit"
sortiert (Nachbar-Pixel-Vergleich horizontal/vertikal) — die Top-Treffer waren ausschließlich
Kana-Schriftzeichen mit zufällig ähnlichem Strichmuster, **kein** echtes Dither-/Noise-Tile
und **keine** Augenpaar-Grafik gefunden.

**Schlussfolgerung:** Die Dunkelheits-Grafiken (Dither-Tile + Augenpaar-Sprite) sind in den
aktuell verfügbaren Savestates (alle auf Etage 1, keine Dunkelheit) schlicht **nicht in VRAM
geladen** — konsistent mit der User-Aussage, dass die Mechanik erst auf tieferen Etagen
greift. Um die Grafiken und den zugehörigen Rendering-Code zu finden, würde ein Savestate von
einer tatsächlich dunklen Etage benötigt (mehrere Etagen tief in einer laufenden Quest, mit
funktionierender Navigation erreichbar, aber in dieser Sitzung nicht mehr umgesetzt).
**Für eine Folge-Session:** Entweder (a) einen Spielstand tief genug navigieren und denselben
VRAM-Dump-Ansatz wiederholen, oder (b) weiter statisch nach der "Raum aus Dungeon-Layout
zeichnen"-Funktion suchen und prüfen, ob sie eine Sichtradius-/Entfernungsprüfung enthält
(wahrscheinlicherer Fund-Ansatz, da unabhängig vom Spielfortschritt).

Keine Code-Änderungen, keine neuen Asset-Dateien committed (Scratch-Skripte und -Renderings
bleiben im gitignored `scratch/`-Verzeichnis).

## Basis-Stats-Tabelle GEFUNDEN (Task #8)

**Rein statisch gefunden**, keine Emulation nötig. `Call_000_31ad` (bank_000.asm, $31ad,
aufgerufen von $0884 im Quest-Start-Setup) initialisiert HP/Angriff/Verteidigung/Lucky
beim Queststart:

```
ld a, [$c102]        ; $c102 = Level (1-basiert: 1-9, 10 = Level "M")
add a                ; ×4 (4-Byte-Zeilen)
add a
ld hl, $31c8          ; Tabellenbasis MINUS 4 (siehe unten, Level ist 1-basiert)
rst RST_28             ; hl += a  → hl zeigt auf die richtige Zeile für a>=4
ld de, wPlayerHP       ; Ziel: $c120-$c123
ld bc, $0004
call Call_000_0442     ; generischer memcpy(de, hl, bc)
ld a, [wPlayerHP]
ld [wPlayerMaxHP], a   ; $c124 = Kopie der Start-HP als Max-HP
```

Neue Konstanten in `bank_000.asm`: `wPlayerAttack EQU $c121`, `wPlayerDefense EQU $c122`,
`wPlayerLucky EQU $c123`, `wPlayerMaxHP EQU $c124`.

**Tabelle `BaseStatsByLevel`** (ab ROM-Adresse `$31cc`, 4 Byte/Zeile = `[HP(BCD), Angriff,
Verteidigung, Lucky]`, war vorher als Zufalls-Opcode-Müll fehldekodiert, jetzt als `db`-
Zeilen eingetragen):

| Level | HP | Angriff | Verteidigung | Lucky |
|---|---|---|---|---|
| 1-3 | 10 | 4 | 4 | 4 |
| 4-6 | 11 | 4 | 4 | 5 |
| 7-9 | 12 | 4 | 4 | 6 |
| M | 13 | 5 | 6 | 7 |

**Stimmt exakt mit der Wiki-Stats-Tabelle überein** (`temp/cave_noir_gameplay_strategywiki.md`).
Pro Level-Gruppe stehen 3 identische Zeilen im ROM (je eine pro Level, nicht nur eine
geteilte Zeile pro Gruppe) — z. B. Level 1, 2 und 3 haben jede ihre eigene (identische)
4-Byte-Zeile bei `$31cc`/`$31d0`/`$31d4`.

**Kurioser Implementierungsdetail:** Der Pointer in der Instruktion (`$31c8`) zeigt auf
die letzten 3 Byte der eigenen Funktion (`call $5d07; ret`) — die "Zeile 0" würde also
Code-Bytes lesen. Das ist unproblematisch, weil `$c102` nie `0` ist (Level ist 1-indiziert),
der real genutzte Bereich beginnt erst bei Offset 4 (`$31cc`). Vermutlich vom Compiler/
Assembler-Autor bewusst so gewählt (ein Byte "Tabellenkopf" gespart), nicht verifiziert.

Rebuild nach Umbenennung/Kommentierung/`db`-Ersetzung bleibt bit-identisch
(MD5 `10d92861e262069ce31559e12b927aa0`).

## Quest-Ziel-Tabellen GEFUNDEN (Task #9)

**Fundweg:** Ausgehend von der bereits bekannten Objective-Anzeige-Logik
(`Call_000_2b5d_DrawObjectiveTargetTiles`/`Call_000_2b72_DrawObjectiveProgressTiles`,
bank_000.asm $2b5d/$2b72) die vier WRAM-Zieladressen über die Wort-Tabelle bei `$2b8f`
(indiziert über `$c101`, 1-basiert) ermittelt — **direkte ROM-Byte-Auswertung statt
Emulation** (keine Navigation/Kampf nötig):

| Quest-Typ (`$c101`) | Fortschritt | Ziel |
|---|---|---|
| 1 Monster | `$c16a` | `$c16b` |
| 2 Gold | `$c128` | `$c16e` |
| 3 Orb | `$c16c` | `$c16d` |
| 4 Fairy | `$c16f` | `$c170` |

(Dynamisch gegengeprüft: In `gold_dungeon.state` ist `$c101`=2, `$c102`(Level)=1,
`$c16e`=2 — exakt der Wiki-Wert "Gold Level 1: 2".)

**Die eigentlichen Pro-Level-Tabellen** per ROM-Byte-Pattern-Suche gefunden: Die Wiki-
Zielzahlen pro Quest-Typ (als 10-Byte-BCD-Sequenz, ein Byte pro Level 1-9+M) kommen
**exakt** an vier aufeinanderfolgenden Stellen in **ROM-Bank 2** vor
(Datei-Offset `$ae10`-`$ae37`, CPU-Adresse `$6e10`-`$6e37` wenn Bank 2 eingeblendet ist):

```
$6e10 (Monster): 03 04 05 07 10 12 15 18 20 25   → 3,4,5,7,10,12,15,18,20,25
$6e1a (Gold):    02 04 06 09 15 25 38 55 79 99   → 2,4,6,9,15,25,38,55,79,99
$6e24 (Orb):     01 02 03 04 05 06 06 06 07 08   → 1,2,3,4,5,6,6,6,7,8
$6e2e (Fairy):   01 02 03 04 05 06 07 08 09 09   → 1,2,3,4,5,6,7,8,9,9
```

**Stimmt zahlengenau mit der Wiki-Walkthrough-Tabelle überein**
(`temp/cave_noir_walkthrough_strategywiki.md`).

**Zusätzlich gefunden:** Ein kleiner 16-Byte-"Header" direkt davor (`$6e00`-`$6e0f`,
4 Einträge à 4 Byte), der für jeden Quest-Typ `[WRAM-Zieladresse, Tabellenzeiger-1]`
verknüpft — z. B. Eintrag 0: `6b c1 0f 6e` = Ziel `$c16b`, Tabellenzeiger `$6e0f`
(Tabelle beginnt effektiv bei `$6e10`, aber der gespeicherte Zeiger ist um 1 kleiner,
weil `$c102`/Level 1-basiert ist — exakt dasselbe Muster wie bei `BaseStatsByLevel`,
siehe oben). Reihenfolge und Zieladressen im Header stimmen 1:1 mit der oben gefundenen
Objective-Zieladressen-Tabelle überein — starke Bestätigung, dass Zuordnung korrekt ist.

**Nicht gefunden/nicht sicher verifiziert:** Der konkrete Code, der diesen Header +
Tabelle zur Quest-Start-Zeit ausliest und in `$c16b` usw. schreibt (vermutlich ein
Cross-Bank-Lookup mit explizitem ROM-Bank-Wechsel nach Bank 2, der Bank-Switch-Code
selbst wurde nicht lokalisiert). Der ursprünglich vielversprechend aussehende Call-Pfad
`jr_001_6195`/`Jump_000_3955` (bank_001.asm $6195ff) stellte sich beim genaueren Lesen
als reine **Digit-zu-Tile-Zeichenroutine** heraus (liest einen bereits gesetzten Wert aus
`[de]`, zeichnet ihn nur) — nicht die Stelle, an der der Wert ursprünglich gesetzt wird.

**Bewusst nicht editiert:** `bank_002.asm` im Bereich `$6e00`-$6e37` enthält zwei echte,
von anderswo referenzierte Sprungziele (`jr_002_6e0d`, `jr_002_6e39`) mitten in dem, was
wir als reine Datentabelle identifiziert haben — ob das echte, erreichbare Code-Pfade
sind oder nur weitere Fehldekodierungs-Artefakte, wurde nicht geklärt. Um das Risiko eines
kaputten Rebuilds zu vermeiden, wurde dieser Bereich **nicht** in saubere `db`-Zeilen
umgewandelt; die Tabellenwerte sind stattdessen hier in NOTES.md dokumentiert (per
Python-Skript direkt aus der ROM-Datei gelesen, nicht über die Disassembly-Textdatei).

Umbenannt/kommentiert: `Call_000_2b5d_DrawObjectiveTargetTiles`,
`Call_000_2b72_DrawObjectiveProgressTiles` (bank_000.asm, nur Kommentare erweitert, keine
neuen Labels). Rebuild bleibt bit-identisch.

## Lucky-Stat und Trefferchance GEKLÄRT (Task #10)

**Kernbefund: Es gibt gar keine "Trefferchance"/Miss-Mechanik.** Jeder Angriff trifft immer.
Das passt zum bereits vorher dokumentierten Befund ("Zufalls-/Trefferchancen-Suche" oben):
der Schaden, den das Monster dem Spieler zufügt, ist ein deterministischer Tabellen-Lookup
(`Call_001_518a`). Diese Session wurde zusätzlich die Spieler→Monster-Angriffsseite gefunden
(`Call_001_5c47`/`Call_001_5c75`, bank_001.asm $5c47/$5c75) — auch dort **kein** Zufalls-
Vergleich, sondern reine Tabellen-Auswahl je nach Teilnehmer-ID (`$c523`/`$c524`: Wert `<2`
→ Spieler-Stat (`$c129`/`$c12a`, "effektiver Angriff/Verteidigung"), Wert `>=2` → Lookup im
Monster-Array `$c5c0+id*16` (Offsets `$03`/`$06`)). Die anschließende Schadensformel
($5c8a-$5cde) ist reine Ganzzahl-Arithmetik (Multiplikation/Division über
`Call_000_03df`/`Call_000_03f4`, mit `$c539 and $1f` als Skalierungsfaktor — vermutlich ein
Lage-/Richtungs-Bonus, kein Würfelwurf) mit Mindestschaden 1, falls Angriff·2 ≤ Verteidigung.
Kein `rDIV`/Zufallszahl fließt ein.

**Effektive Angriff/Verteidigung-Werte** (`$c129`/`$c12a`) werden on-the-fly berechnet:
- `Call_001_5cf3` ($5cf3): `effektiver Angriff = wPlayerAttack($c121) + $c12d + $c12e`
  (zwei Bonus-Bytes, BCD-Addition mit Clamp auf 99 über `Call_000_0374`).
- `Call_001_5d0e` ($5d0e): `effektive Verteidigung = wPlayerDefense($c122) + $c12f + $c130`.
- `$c12d`/`$c12e`/`$c12f`/`$c130` werden von Orb-Effekten befüllt (siehe unten) — vermutlich
  temporäre Kampf-Buffs, nicht persistent. Nicht abschließend verifiziert.

**Was `wPlayerLucky` ($c123) tatsächlich tut — NICHT Trefferchance, sondern Item/Orb-Effekte:**
Alle 5 Lesestellen von `$c123` im ganzen Projekt liegen im Orb-Effekt-Dispatcher
(`bank_001.asm`, Bereich $50ac-$5326, verzweigt über `$c516` = Orb-Typ-Index) und im
Stats-Screen-Renderer ($5e46). Konkret:
1. **Heilung** (`jr_001_51ec`, $51ec): `neue HP = min(wPlayerHP + wPlayerLucky, wPlayerMaxHP)`
   (BCD-Addition + Clamp über `Call_000_0374`) — Lucky ist direkt der Heilbonus einer
   Heiltrank-artigen Orb-Wirkung.
2. **Orb-Typ 6** (`Jump_001_52e7`, $52e7): Heilung um `wPlayerLucky + 1`.
3. **Zufälliger Event-Timer `$c515`** (`Call_001_50a2`-Bereich, $50ef): für die meisten
   Orb-Typen wird `$c515 = Call_000_0456(rand, b = wPlayerLucky÷2) + 1`, geklemmt auf 99 —
   ein Zufallswert aus dem LCG-PRNG bei `Call_000_0456` ($0456, Seed in `$c011`/`$c012`,
   `state = state*9 + $0929 mod $11d7`), dessen *Bereich* von Lucky/2 abhängt (höheres
   Lucky → größerer möglicher Wertebereich für `$c515`, z. B. eine Fallen-Zünddauer oder
   Item-Wirkungsdauer). Für Orb-Typ `$10` wird statt Lucky die aktuelle Etage (`$c104`)
   als Bereichsparameter verwendet.
4. **Statusbildschirm** ($5e46-$5e69): Lucky wird nur als Ziffern-Anzeige neben
   HP/MaxHP/Angriff/Verteidigung dargestellt (`Call_000_3955`), keine Berechnung.

**Fazit:** "Trefferchance" als Frage war falsch gestellt — es existiert keine. Lucky ist ein
reiner Item/Orb-Wirkungsmultiplikator (Heilmenge, Zufalls-Timer-Bereich), keine Kampf-Statistik
im Sinne von Hit/Miss. Keine Code-Änderungen nötig (nur Doku); Rebuild unverändert
bit-identisch (MD5 `10d92861e262069ce31559e12b927aa0`).

**Korrektur/Präzisierung (siehe Task #11 unten):** Was oben als "Orb-Effekt-Dispatcher"
bezeichnet wurde, ist in Wirklichkeit der **generische Item-Use-Effekt-Dispatcher** (keyed
über `$c516` = Item-Typ-ID, identisch zu den Byte-Werten im Inventar-Array `wInventory`/
`$c140`). "Orb" ist nur einer von mehreren Item-Typen, die dort behandelt werden.

## Item-System GEKLÄRT (Task #11)

**Inventar:** `wInventory` (`$c140`-`$c147`, neu als Konstante in bank_000.asm definiert),
8 Byte, ein Byte pro Slot, Wert = Item-Typ-ID, `$00` = leerer Slot. Stimmt exakt mit der
Wiki-Angabe "maximal 8 Items" überein.

**Gefundene Hilfsroutinen** (bank_001.asm, alle umbenannt mit `_`-Suffix, nur Kommentare/
Labels geändert, keine Bytes):
- `Call_001_4e5a_CountInventoryItems` ($4e5a): zählt belegte Slots.
- `Call_001_4e6a_CountInventoryItemsOfType` ($4e6a): zählt Slots mit Item-Typ `a`
  (wird z. B. mit `a=$07` aufgerufen, um die Anzahl gesammelter Orbs zu ermitteln und in
  `$c16c`, das Orb-Quest-Fortschritts-Byte aus Task #9, zu schreiben → **Orb = Item-Typ `$07`**).
- `Call_001_4e7a_CompactInventory` ($4e7a): schiebt belegte Slots nach vorne, füllt den
  Rest mit `$00` (Lücken-Kompaktierung nach Benutzen/Wegwerfen eines Items).
- `Call_001_4e93_FindInventoryItemOfType` ($4e93): lineare Suche nach Item-Typ `a` im
  Inventar, gibt Slot-Index in `c` und Zero-Flag bei Treffer zurück.
- `Call_001_4ea0_FindAnySword` ($4ea0): sucht rückwärts Item-Typen `$1b`→`$18` (4 Werte)
  → **Schwerter = Item-Typ `$18`-`$1b`**.
- `Call_001_4eae_FindAnyShield` ($4eae): sucht rückwärts `$1f`→`$1c` (4 Werte)
  → **Schilde = Item-Typ `$1c`-`$1f`**.
- `Call_001_4ebc_ConsumeInventoryItem` ($4ebc): entfernt ein Item vom Typ `a` aus dem
  Inventar (setzt Slot auf `$00`) und löscht `$c514` (vermutlich ein "Aktion läuft"-Flag).

**Ausrüstungs-Bonustabellen gefunden und als `db` dokumentiert** (bank_001.asm, $510a/$510e
— sicher, da zwischen zwei `ret`-terminierten Routinen liegend, keine Sprungziele im Bereich,
siehe Risiko-Policy oben):
```
SwordAttackBonusByItemID  ($510a): 01 02 03 05   → Schwert-ID $18/$19/$1a/$1b: +1/+2/+3/+5 Angriff
ShieldDefenseBonusByItemID($510e): 01 02 03 05   → Schild-ID  $1c/$1d/$1e/$1f: +1/+2/+3/+5 Verteidigung
```
Indiziert über `Call_001_527b`/`Call_001_52be` (`item_id - $18`/`item_id - $1c`, dann
`RST_28` = `hl += a`). **Stimmt exakt mit der Wiki-Tabelle überein** (Mahou/Honoo/Inazuma/
Densetsu no Ken = +1/+2/+3/+5 Angriff; Ki/Tetsu/Hagane/Densetsu no Tate = +1/+2/+3/+5
Verteidigung).

**Effektiver Angriff/Verteidigung** (bereits unter Task #10 dokumentiert, hier nochmal
im Item-Kontext): `Call_001_5cf3`/`Call_001_5d0e` addieren zwei Bonus-Bytes (`$c12d`+`$c12e`
bzw. `$c12f`+`$c130`) auf die Basis-Stats. Diese Bonus-Bytes werden beim Ausrüsten von
Schwert/Schild (`Jump_001_5261`/`Jump_001_52a4`) aus den obigen Tabellen befüllt. Passt zur
Wiki-Aussage "Die Stat-Erhöhung von Schwertern/Schilden stapelt sich nicht" (nur ein
Bonus-Slot pro Kategorie, kein Akkumulieren mehrerer Waffen).

**Item-Benutzung (Ablauf):** Beim Betreten des Item-Screens wählt der Spieler einen
Inventar-Slot per Cursor an; der Code bei `jr_000_36e0` (bank_000.asm, $36e0, jetzt
kommentiert) kompaktiert das Inventar, ermittelt den Slot-Index über die Item-Zählung,
liest den Item-Typ aus `wInventory[index]`, schreibt ihn nach `$c516` und **löscht den
Slot sofort** (Item wird beim Auswählen entfernt, nicht erst nach Effekt-Ausführung). Der
generische Effekt-Dispatcher (bank_001.asm, $50ac-$5326, verzweigt über `$c516`) führt dann
die konkrete Wirkung aus — siehe Fallbeispiele unter Task #10 (Heilung, MaxHP+1, Angriffs-/
Verteidigungs-Buff via Ausrüsten).

**Sicher identifizierte Item-Typ-IDs:**

| ID | Effekt | Wiki-Übereinstimmung |
|---|---|---|
| `$06` | temporärer Angriffs-Buff, Betrag/Dauer skaliert mit Lucky | passt zu "Kougeki" (temp. Angriffserhöhung) |
| `$07` | Orb (zählt für Orb-Quest-Fortschritt `$c16c`) | "Orb" |
| `$12` | `wPlayerMaxHP += 1`, belegt keinen Slot | "HP no Moto" (+1 MaxHP, belegt keinen Slot) |
| `$18`-`$1b` | Schwert, Angriffsbonus +1/+2/+3/+5 | Mahou/Honoo/Inazuma/Densetsu no Ken |
| `$1c`-`$1f` | Schild, Verteidigungsbonus +1/+2/+3/+5 | Ki/Tetsu/Hagane/Densetsu no Tate |

**Nicht abschließend geklärt:** Die übrigen ~18 Item-Typ-IDs aus der Wiki-Liste (Kaifuku,
Dokukeshi, Tobu, Change, Mamori, Toumei, Lucky, Oriru, Akari, Fire, Faigaa, Ganseki, Kagi,
Gold) wurden nicht einzeln numerisch zugeordnet — dafür müsste der komplette
Effekt-Dispatcher ($50ac-$5326 und die Aufrufer davor ab ~$4ff8) Zeile für Zeile
durchgegangen werden, was über den Rahmen dieser Static-Analysis-Session hinausging. Gold
([1], belegt laut Wiki keinen Inventar-Slot) wird vermutlich wie "HP no Moto" direkt beim
Aufsammeln verarbeitet (ähnliches Muster wie der Pickup-Code bei `jr_000_36e0`), aber die
konkrete Codestelle wurde nicht gesucht.

Rebuild nach allen Umbenennungen/Kommentaren/`db`-Ersetzungen bleibt bit-identisch
(MD5 `10d92861e262069ce31559e12b927aa0`).

## Spielmechaniken aus Live-Play im "Beaten Dying Moon"-Emulator bestätigt

User hat begonnen, im Beaten Dying Moon Emulator zu spielen (u.a. um `.sym`-Daten zu
erzeugen), und dabei folgende Interaktionsmuster per Hand bestätigt:

1. **Treppe/Etagenwechsel**: auf das Treppenfeld laufen, dann **A** drücken. Deckt sich
   exakt mit der bereits früher dynamisch verifizierten Annahme (siehe "Etagentiefe GELÖST").

2. **Angriff — Korrektur/Präzisierung des bisherigen Combat-Befunds**: Steht man neben einem
   oder mehreren Gegnern, erscheint keine automatische Ziel-Markierung. Man muss **erneut in
   Richtung des gewünschten Gegners drücken**, um ihn zu selektieren (sichtbar als blinkende
   Eckmarkierungen auf seiner Kachel — bei mehreren Gegnern wählt ein erneuter Richtungsdruck
   einen anderen aus). Erst danach löst **A** den eigentlichen Angriff aus. Es ist also kein
   einfaches "hinlaufen + A", sondern ein zweistufiges Select-dann-Confirm. Das bisherige
   NOTES-Framing ("face a monster and press A") war im Kern richtig (kein Bump-Attack, A
   nötig), aber ungenau bzgl. des expliziten zweiten Richtungsdrucks zur Auswahl — in
   `wiki/Combat-System.md` korrigiert.

3. **Kisten/Items aufsammeln**: strukturell identisch zum Angriffs-Ablauf. Hinlaufen,
   erneuter Richtungsdruck zum Selektieren der Kiste (gleiche blinkende Eckmarkierung), dann
   **A** zum Öffnen. Der Gegenstand fällt dabei auf das Kistenfeld (landet NICHT direkt im
   Inventar). Erst wenn man auf dieses Feld läuft und dort erneut **A** drückt, wandert der
   Gegenstand ins Inventar. Zwei getrennte A-Drücke (öffnen, dann aufheben) mit einer
   Laufbewegung dazwischen — kein einstufiges "hinlaufen und einsammeln".

Entsprechend in `wiki/Combat-System.md`, `wiki/Dungeon-Mechanics.md` und
`wiki/Controls-and-Menus.md` nachgezogen. Reiner Dokumentations-Fund, keine Code-Änderung.

## Angriffs-Auswahl-Mechanik im Code nachvollzogen (statisch + dynamisch über PyBoy-Hooks)

Auf berechtigte Kritik hin ("nicht nur ins Wiki schreiben, sondern im Code nachvollziehen")
den oben beschriebenen Select-dann-Confirm-Mechanismus tatsächlich im Disassembly gesucht
und mit `pyboy.hook_register` (Breakpoint-Callback auf eine Bank:Adresse) dynamisch
verifiziert, statt nur die Spielbeobachtung zu übernehmen.

**Methode:** Auf `combat2.state` (Spieler direkt neben Monster-Slot 0, Typ `$01`/Crab)
Hooks auf diverse Kandidaten-Adressen gesetzt, dann die reale Eingabesequenz
(`button_press('down')` → mehrere Ticks → `button_release` → `button_press('a')` → Ticks)
abgespielt und beobachtet, welche Adressen tatsächlich getroffen werden und wie sich
`$c125`/`$c126`/`$c523`/`$c524`/Monster-HP (Offset `$06`) dabei verändern.

**Ergebnis — zwei verschachtelte Zustandsautomaten, beide über `RST_00`-Sprungtabellen:**

1. `$c125` ist der "Hauptzustand" (Tabelle bei `$3360` in `bank_000.asm`, 24 Einträge,
   `Call_000_3355` liest `$c125` und springt per `rst RST_00`). Zustand `6` = "Ziel-Auswahl
   aktiv" (Handler `Call_000_3bae`), Zustand `12` = "Angriff/Pickup ausführen"
   (`Jump_001_5a59_ConfirmAttackOrPickup` in `bank_001.asm`, Eintrag 12 der Tabelle = `$5a59`).
2. Innerhalb von Zustand `6` liest `Call_000_3bc6` den zuletzt neu gedrückten Knopf (`$c512`,
   0=keiner, 1-4=Richtungen, 5=A, 6=B, codiert von `Call_000_3392`) und springt wiederum per
   `rst RST_00` in `Call_000_3c4f_TrySelectDirection` (Richtung), `Jump_000_3c7f_ConfirmAttack`
   (A) oder `Jump_000_3c85_CancelTargeting` (B).
3. `Call_000_3c4f_TrySelectDirection` prüft für die gedrückte Richtung per
   `Call_001_57db`/`Call_000_2f28` (Monster-Slot-Scan) bzw. `Call_000_35ef` (Bodenitem-Check),
   ob dort tatsächlich ein Ziel sitzt — nur dann wird die Richtung als neues Ziel übernommen
   (`jr_000_3c72`, setzt `$c126=1`). Das ist **exakt** das vom User beschriebene "erneuter
   Richtungsdruck selektiert den Gegner" — mit echter Existenzprüfung, kein reines Hinlaufen.
4. `Jump_000_3c7f_ConfirmAttack` setzt nur `$c126=3`; der äußere Dispatch in `Call_000_3bae`
   (zweite `rst RST_00`-Tabelle bei `$3bbe`, indiziert über `$c126`) löst das in
   `Jump_000_3c38_ConfirmAttack` auf, was `$c125=12` setzt — der eigentliche Angriffszustand.
5. `Jump_001_5a59_ConfirmAttackOrPickup` (Zustand 12) unterscheidet über `$c524` (Bit 7 =
   "Bodenitem", sonst `<2`=kein gültiges Ziel/`>=2`=Monster-Slot+2) zwischen Boden-Pickup
   (`Jump_001_4f3d`) und echtem Angriff; bei Angriff wird `$c523=1` (Spieler = Angreifer)
   gesetzt und `Call_001_5c00` (→ `Call_001_5c47`/`Call_001_5c75`, die bereits bekannte
   Schadensformel) aufgerufen.

**Dynamischer Beweis:** Hook auf `$5a59` feuerte exakt beim A-Druck mit `$c523=1`, `$c524=2`
(Monster-Slot 0 = Slot-Index 0 + 2), direkt gefolgt von `Call_001_5c00`/`5c47`/`5c75`; Monster-
Struct Offset `$06` fiel von 5 auf 4 (Schaden 1) im selben Zug. `$c125` war zu diesem
Zeitpunkt bereits auf 12 gesprungen — identisch zum statisch gefundenen Tabelleneintrag.

**Offen:** Wie der Spieler überhaupt in Zustand `$c125=6` hineinkommt (vermutlich ein
automatischer Übergang beim Erkennen eines adjazenten Monsters/Items nach einem
Bewegungsschritt, noch nicht zurückverfolgt), und die genaue Bedeutung von `$4f0e`
(liefert laut `Call_000_35ef` den "l"-Wert, der mit `$80` kombiniert in `$c524` landet —
vermutlich eine Bodenitem-Positions-zu-Index-Auflösung).

Alle Label-Ergänzungen (`Jump_000_3c32_CommitTargetSelection`, `Jump_000_3c38_ConfirmAttack`,
`Jump_000_3c49_NoInputWhileTargeting`, `Call_000_3c4f_TrySelectDirection`,
`Jump_000_3c7f_ConfirmAttack`, `Jump_000_3c85_CancelTargeting`,
`Jump_001_5a59_ConfirmAttackOrPickup`) sind reine Label/Kommentar-Ergänzungen an bereits
korrekt disassemblierten Code (keine `db`-Konvertierung nötig). Rebuild bleibt bit-identisch
(MD5 `10d92861e262069ce31559e12b927aa0`).

## Kein echter "Dungeon-Seed" — und ein einstufiger Boden-Item/Fallen-Fund (Kisten-Recherche)

User-Frage: ob es einen Dungeon-Generierungs-Seed gibt, den man sich merken/mitteilen könnte,
da BDM (Web-Version) keine eigenen Savestates erlaubt.

**Befund zum Zufall:** Der komplette Pseudo-Zufall im Spiel läuft über einen einzigen
16-Bit-LCG-Zustand `$c011`/`$c012` (`Call_000_0456`, bereits aus der Combat-RNG-Recherche
bekannt: `state = state×9 + $0929 mod $11d7`). Eine ROM-weite Suche nach Schreibzugriffen auf
`$c011`/`$c012` findet **nur** die Lese/Schreib-Stellen innerhalb von `Call_000_0456` selbst —
nirgendwo sonst im Code (keine Bank) wird dieser Zustand mit echter Entropie (Timer, `rDIV`,
Boot-Zähler) initialisiert. Es gibt also keinen separaten "Dungeon-Seed"-Wert, den man sich
notieren könnte — die gesamte Variation kommt einzig aus der Anzahl der LCG-Aufrufe, die bis
zum Dungeon-Eintritt akkumuliert wurden (im Wesentlichen: wie lange/wie der Spieler durch die
Menüs navigiert).

**Praktische Konsequenz (positiv!):** Weil der Zustand nur in diesen zwei Bytes steckt, kann
man ihn in PyBoy direkt gezielt pofzen, um einen Dungeon reproduzierbar zu erzeugen — ganz
ohne echten Spieler-Savestate. Getestet mit `items_full.state` (Quest 1/Level 1, aber dort per
Memory-Poke `$c101=2` auf Quest 2/Gold umgeschaltet) + verschiedenen `$c011`/`$c012`-Werten vor
dem A-Druck am Item-Loadout-Screen: Bei **jedem** getesteten Seed landet exakt ein Item
(Typ `$10`) am selben `$d500`-Offset (0) — nur die Spawn-Position variiert. Das deutet darauf
hin, dass für Quest2/Level1 nur ein einziges Raum-Template existiert (oder die Itemplatzierung
für dieses Level fix ist) und die "Zufälligkeit" sich hier vor allem auf die Spawn-Position
beschränkt — keine abschließende Aussage für andere Quest/Level-Kombinationen.

**Mit dieser reproduzierbaren Savestate die Kisten-Mechanik dynamisch getestet** (BFS über
Bewegungssequenzen bis `$c241` den dynamischen Tile-Wert zeigt, dann PyBoy-Hooks beim
A-Druck):

- Die Kiste **blockiert die Bewegung nicht** — man kann einfach drauflaufen (widerlegt meine
  vorherige statische Vermutung, dass Bit 7 von `$c241` jede dynamische Kachel blockiert; das
  gilt offenbar nur für die "Boden-Item sichtbar"-Klasse `$89`, nicht für die "Kiste mit Item
  drin"-Klasse `$0a`).
- A-Druck **während man auf der Kiste steht** löst `jr_000_36e0` → (da Itemtyp `$10` einer der
  Sonderfälle ist) `jr_000_371a` → `Call_001_50df_RollGoldAmount` aus.

**Korrektur nach berechtigtem User-Einwand** ("ich hätte einen Vollbild-Screen erwartet, der
anzeigt was man eingesammelt hat — komisch, dass nur ein Timer läuft"): Der vermeintliche
"Fallen-Timer" war eine Fehlinterpretation. Der Code direkt nach `Call_001_50df_RollGoldAmount`
(`jr_000_371a` setzt `$c126=8` → `Jump_000_351a_EnterGoldPickupPopup` → `$c125=4` →
`Jump_001_5003_ShowGoldPickup` in `bank_001.asm`) öffnet tatsächlich ein Popup-Fenster
(`Call_000_0e2d`/`Call_000_0260`/`Call_000_0e6d`, dasselbe Fenster-Öffnen/Zeichnen/Schließen-
Trio wie bei anderen Popups) und addiert den in `$c515` abgelegten Wert direkt auf `$c128`
(`wGoldCollected`, BCD-Addition). Dynamisch bestätigt: `$c128` sprang nach dem A-Druck von 0
auf 1, exakt der in `$c515` gerollte Betrag. **Itemtyp `$10`/`$11` ist also schlicht ein
Goldhaufen auf dem Boden** (Betrag skaliert mit Etagentiefe bzw. Lucky-Stat + Zufallsanteil),
und das "Popup" ist die erwartete Rückmeldung — nur kein Vollbild-Screen, sondern ein
Fenster/HUD-Popup mit SFX. Alle drei Stellen entsprechend umbenannt
(`Call_001_50df_RollGoldAmount`, `Jump_000_351a_EnterGoldPickupPopup`,
`Jump_001_5003_ShowGoldPickup`); Rebuild bleibt bit-identisch.

**Weiterhin offen (Stand vor der echten Kisten-Savestate):** Die Haupt-Branch von
`jr_000_36e0` (für "normale", nicht `$10`/`$11`-Itemtypen) füllt das Inventar direkt in
einem Schritt ohne Zwischenstufe.

## Die echte Zwei-Phasen-Kiste GEFUNDEN (dank User-Savestate `save_001.state`)

User hat mit dem neuen `tools/play_and_save.py`-Skript (PyBoy mit Fenster + Z/X-Save/Load)
einen Save zwei Felder südlich einer noch ungeöffneten Kiste erstellt (die explizit kein
Gold/keine Falle enthält — Quest 1/Level 1). `$d500`-Scan zeigte zwei Items mit **Bit 7
bereits gesetzt**: Offset 0 = `$87` (Itemtyp `$07` = Orb), Offset 1 = `$8d` (Itemtyp `$0d`,
noch nicht identifiziert).

**Wichtige Korrektur meiner vorherigen Bit-7-Interpretation:** Ich hatte Bit 7 im `$d500`-
Byte als "Item liegt bereits sichtbar auf dem Boden" gedeutet (Tile-Klasse `$89`) und Bit 7
gelöscht als "geschlossene Kiste mit Item drin" (Tile-Klasse `$0a`). Das war **exakt
verkehrt herum** — dynamisch am echten Beispiel bestätigt:

1. Herangelaufen (`up`×2) — zweiter Schritt blieb stehen und wechselte in `$c125=6`
   (dieselbe "Ziel-Auswahl aktiv"-Mechanik wie beim Kampf!). `Call_000_35ef` feuerte dabei.
2. Erneuter Richtungsdruck (`up`) selektiert die Kiste (`Call_000_3c4f_TrySelectDirection`
   feuert, `$c524=130=0x82` = Slot|Bit7, die "geschlossene-Kiste"-Markierung).
3. **A-Druck** löst `Jump_000_3c38_ConfirmAttack`→`Jump_001_5a59_ConfirmAttackOrPickup`→
   (Bit 7 in `$c524` gesetzt) →`Jump_001_4f3d_OpenChestRevealItem` aus. Ergebnis:
   `$d500[0]` wechselt von `135` (`$87`) zu **`7`** (`$07`, Bit 7 jetzt gelöscht!). Inventar
   bleibt **unverändert**. Das ist der "Kiste öffnen"-Schritt — das Item liegt jetzt
   sichtbar da, ist aber noch nicht eingesammelt.
4. Ein Schritt weiter auf das jetzt offene Feld laufen (`up`), dann **nochmal A** drücken:
   `jr_000_36e0` (Tile-Klasse jetzt `$0a`, da Bit 7 gelöscht) füllt tatsächlich einen freien
   Inventarplatz (`inv[4]` wurde `7` = Orb) und `$d500[0]` wird auf `0` zurückgesetzt.

**Also: Bit 7 GESETZT = noch geschlossene Kiste (braucht Richtung-selektieren + A zum
Öffnen); Bit 7 GELÖSCHT = Item liegt offen da (braucht nur noch Hinlaufen + A zum
Aufsammeln).** Das deckt sich exakt mit der vom User aus Live-Play beschriebenen
Zwei-Phasen-Mechanik. `Call_000_35ef`, `Jump_001_4f3d` und alle zugehörigen Kommentare
umbenannt/korrigiert (`Call_000_35ef_CheckClosedChestAhead`,
`Jump_001_4f3d_OpenChestRevealItem`). Rebuild bleibt bit-identisch
(MD5 `10d92861e262069ce31559e12b927aa0`).

Mein früherer "Goldhaufen" Fund (Itemtyp `$10`/`$11`, siehe oben) ist ein Spezialfall *ohne*
diese Zwei-Phasen-Logik: `jr_000_36e0` fängt `$10`/`$11` schon in der direkten Branch ab
(bevor es überhaupt zur Kisten-Auswahl kommt) und addiert sofort Gold — passt dazu, dass
loses Gold auf dem Boden liegt und nicht erst "geöffnet" werden muss. Für Itemtyp `7`
(Orb) und vermutlich die meisten anderen Items gilt dagegen die volle Zwei-Phasen-Kiste.

Noch offen: Itemtyp `$0d` (zweites Item in `save_001.state`) ist weiterhin unidentifiziert.

## Dunkelheit/Fackel-Mechanik ENDLICH BESTÄTIGT (`save_003.state`, B4F, Quest 1/Level 1)

User hat mit `tools/play_and_save.py` einen Save in einem dunklen Dungeon-Abschnitt erstellt
(Etage B4F — passt zur früheren Info "Dunkelheit erst ab tieferen Etagen"). HP kritisch
niedrig (3/10), zwei Monster vom bisher unbekannten Typ `$13` (19) an identischer Position
(4,5) — vermutlich dasselbe Monster, als Augenpaar dargestellt (siehe unten).

**Visuell bestätigt** (`pyboy.screen.image` — funktioniert einwandfrei, anders als die
früher für Einzel-Tiles gefundene PyBoy-Bildbug): Screenshot zeigt exakt das vom User
beschriebene/referenzierte Bild — dichtes Dither-Muster über fast den ganzen Bildschirm,
der Spieler + ein kleiner Raumausschnitt (Mauer + Boden) bleiben sichtbar, das Monster
erscheint nur als weißes Augenpaar-Sprite (OAM-Tile `140`, zwei nebeneinander platzierte
Sprites bei x=80/88,y=64) inmitten der Dunkelheit.

**Dunkelheits-Tile identifiziert:** Rohes Tilemap-Byte `$5f` (95) — direkt aus `$9800`+Offset
gelesen (LCDC Bit 4 gesetzt → `$8000`-Adressierung, also Tile-ID 95 = VRAM `$85f0`). Füllt
den kompletten sichtbaren Bildschirmbereich außerhalb des kleinen "erhellten" Fensters um
den Spieler.

**Dynamischer Aufdeck-Mechanismus bestätigt** (nicht nur statische Raumgrafik!): Vor einem
Schritt nach unten zeigte Zeile 14-15 der Tilemap durchgängig `95` (dunkel). Nach genau
einem `down`-Tastendruck (Spielerposition Zeile 5→6) wurden exakt diese beiden Zeilen mit
echten Boden-/Wand-Tiles (`21`,`22`,`18`,...) überschrieben — die bereits zuvor aufgedeckten
Zeilen blieben dabei unverändert sichtbar (kein erneutes Verdunkeln). Das ist also ein
klassisches "Fog of War mit Gedächtnis": bei jeder Bewegung wird ein kleiner Bereich um die
neue Position aus der echten Raumkarte neu gezeichnet und bleibt danach dauerhaft sichtbar.

**Noch offen:** Die genaue Code-Routine, die pro Zug den Aufdeck-Radius berechnet und die
echten Tiles aus der Raumkarte in den `$9800`-Bereich schreibt, wurde noch nicht lokalisiert
(ROM-weite Suche nach `$5f` als Vergleichskonstante in Bank 0/1 ergab nichts — die Logik
prüft vermutlich nicht "ist das Tile == `$5f`", sondern zeichnet einfach bei jeder Bewegung
unbedingt einen kleinen Bereich um die neue Position neu, unabhängig davon ob Dunkelheit
aktiv ist; der Unterschied zu normalen Räumen wäre dann nur, dass dunkle Räume beim Betreten
mit `$5f` statt der echten Tiles vorinitialisiert werden).

## Akari (Kerze) GETESTET — User hat das Risiko bei HP 3/10 bewusst akzeptiert

Item-Screen über **A auf freiem Feld** erreicht (nicht Start/Camp-Menü — das zeigt nur
Map/Status/BGM/Reset). Durch die Item-Icons navigiert und Namen im Textfeld unten abgelesen:

| Slot | Itemtyp | Name (Item-Screen) | Bedeutung |
|---|---|---|---|
| 0 | `$01` | カイフク (Kaifuku) | Heilung |
| 1 | `$03` | ファイヤー (Faiyaa) | Feuer |
| 2 | `$02` | ドクケシ (Dokukeshi) | Gift heilen |
| 3 | `$0a` | トウメイ (Toumei) | Unsichtbarkeit |
| 4 | `$07` | オーブ (Oobu) | Orb (Quest-Item, bereits bekannt) |
| 5 | `$0d` | **アカリ (Akari)** | **Licht** — das gesuchte Kerzen-Item! |
| 6 | `$18` | マホウノケン (Mahou no Ken) | Schwert +1 (bereits bekannt) |

**Akari benutzt** (Cursor auf Slot 5, A gedrückt): Inventarplatz wurde sofort auf `0`
geleert (verbraucht, Einmal-Effekt) und die Anzahl dunkler `$5f`-Tiles im sichtbaren Bereich
fiel von 204 auf 136 — ein deutlich größerer Teil des Raums wurde auf einen Schlag
aufgedeckt (kein andauernder Lichtradius-Buff, sondern ein einmaliger "Burst"). Per
Screenshot visuell bestätigt: vorher/nachher zeigt sichtbar mehr Raum (Mauern, Boden).

**Interessante Randnotiz:** Das Monster in dem neu erhellten Bereich blieb weiterhin nur als
Augenpaar-Sprite sichtbar — die "Raum aufdecken"-Logik (worauf Akari wirkt) und die "Monster
als echtes Sprite zeigen"-Logik (wirkt erst bei tatsächlicher Annäherung) sind also zwei
unabhängige Systeme. Nichts ist schiefgegangen trotz HP 3/10 — kein Fallen-Effekt o.ä.

Nebenbei zwei weitere Item-IDs bestätigt: `$01`=Kaifuku (Heilung), `$02`=Dokukeshi
(Gift-Heilmittel), `$03`=Fire, `$0a`=Toumei (Unsichtbarkeit). Alles in
`wiki/Item-System.md`/`wiki/Dungeon-Mechanics.md`/`wiki/Open-Questions.md` nachgezogen.
Reiner Dokumentations-Fund (Item-Screen-Namen per PyBoy-Input-Navigation ausgelesen), keine
Code-Änderung nötig.

## Warp/Teleporter GEFUNDEN (`save_004.state`) — statische Hypothese exakt bestätigt

User-Save direkt unter einem Teleporter (B4F, Quest 1/Level 1). Hochgelaufen (Tile-Klasse
`$0b` erreicht, `$c241=128`→`11` nach dem Schritt drauf), dann **A** gedrückt:

- Position sprang sofort von `(5,7)` auf `(1,2)` (Zeile/Spalte), `$c500` (siehe unten: das
  ist der **Raum-Index innerhalb der Etage**, nicht die Zeile!) wechselte von `1` auf `2`,
  Etage (`$c104`) blieb bei `4` — exakt wie vom User beschrieben: "immer dieselbe Ebene,
  anderer Raum".
- Screenshot vorher/nachher bestätigt visuell einen komplett anderen (dunklen) Raum mit
  erneut sichtbarem Teleporter-Symbol.

**Code exakt wie in der ursprünglichen statischen Hypothese** (`Call_001_408a_WarpToOtherRoom`,
vorher nur als `$408a` referenziert): `$c427`/`$c428` sind die zwei Raum-Index-Endpunkte
dieses Warp-Paares; der Code vergleicht `$c500` (aktueller Raum-Index) gegen `$c427` — bei
Übereinstimmung wird `$c428` als Ziel genommen, sonst `$c427` ("teleportiere zum jeweils
ANDEREN Ende"). Das Ziel wird über eine Wort-Tabelle bei `$206b` aufgelöst, die neue
In-Raum-Position nach `$c50b`/`$c50c` gestaged, und erst eine separate Funktion
(`Jump_001_40de_FinalizeWarp`, vorher `$40de`) übernimmt das tatsächlich in
`$c500`-`$c504` und zeichnet die Ansicht neu.

Live getestet: `$c427`/`$c428` = `(1, 2)`, Start-Raum-Index `1` → Ziel-Raum-Index `2`
gewählt, landete im sichtbar anderen Raum. Beide Routinen benannt/kommentiert, Rebuild
bleibt bit-identisch (MD5 `10d92861e262069ce31559e12b927aa0`).

## Dungeon-Ausgang ("Door") GEFUNDEN (`save_005.state`, HP 1/10 — Risiko akzeptiert)

User-Save direkt neben dem Levelausgang, Quest bereits 3/3 Monster erfüllt. Bei HP 1/10
extrem vorsichtig getestet (vorab Backup-Save, nach jedem einzelnen Tastendruck HP
geprüft) — HP blieb während des gesamten Tests stabil, keine Gefahr eingetreten.

- Direktes Reinlaufen in die Ausgangs-Kachel = Bump (blockiert, wie eine normale Wand,
  `$c241` roh `$80`).
- Adjazent stehen + **A** drücken: `$c100` (Haupt-Spielzustand) springt auf `12` (Handler
  bei `$0bd4` in `bank_000.asm`, Teil der großen `$c100`-Dispatch-Tabelle — eine weitere,
  bisher nicht kartierte Ebene über den schon bekannten `$c125`/`$c126`-Automaten).
- Danach läuft automatisch ab: Paletten-Fade-Übergang → scrollende "Flur-Rausrennen"-
  Animation → Ergebnis-Screen:
  > コナミ タロウ は、3 ひきモンスターをたおしました。おめでとう!!
  > ("Konami Tarou hat 3 Monster besiegt. Herzlichen Glückwunsch!!")
  gefolgt von einer sich wiederholenden Liste einzelner Kills mit Icon, laufendem Index,
  Name und Gewicht/Größe, z.B. `1 ミノタウルス 180kg 2.7m` (Minotaurus) und
  `2 タランチュラ 94kg 2.4m` (Tarantula). Interessant: dieselbe Monsterart zeigt zwischen
  zwei Kills leicht andere Gewicht/Größe-Werte (180kg/2.7m vs. 184kg/2.9m für zwei
  verschiedene Minotaurus-Kills) — vermutlich kleine randomisierte "Flavor"-Stats pro
  Monster-Instanz, unabhängig von den Kampfwerten. Das ist ein vielversprechender Ansatz,
  um Monstertyp-IDs künftig über den Namen zu identifizieren (noch nicht mit den
  Struct-Daten abgeglichen).

**Offen:** Der Ergebnis-Screen loopt unbegrenzt (3000 Ticks ≈ 50 Sekunden getestet, dazu A
kurz/lang gehalten, B, Start, Select — nichts hat zurück ins Guild-Menü geführt). Entweder
fehlt der richtige Input/Zeitpunkt, oder es gibt einen sehr engen Eingabe-Zeitpunkt, den die
20-Tick-Sampling-Lücken übersprungen haben. Auch die genaue Auslöse-Bedingung der
Ausgangs-Kachel selbst (Tile-Klasse vs. feste Koordinatenprüfung) wurde nicht abschließend
geklärt — `$c241` zeigte nur den generischen Wand-Wert `$80`, spricht eher für eine feste
Koordinatenprüfung als ein eigenes Tile-Klassen-System wie bei Treppe/Kiste/Warp.

Reiner Dokumentations-Fund (keine Code-Änderung/kein Rebuild nötig).

## Loch-Sprung-Mechanik GEKLÄRT (`save_001.state`, Quest 1/Level 2) — Sackgasse, dann Durchbruch

User-Beschreibung: direkt vor einem Bodenloch stehend (Blickrichtung Norden), Indikator als
Sprechblase sichtbar, zwei schnelle Richtungsdrücke lassen den Spieler drüberspringen,
dahinter normaler Boden, noch ein Feld weiter eine Kiste.

**Erst Sackgasse:** Meine alte statische Hypothese ("Loch = Tile-Rohwert `$0f`",
`Call_000_3772`/`Jump_000_332b`) ließ sich trotz ausführlicher BFS-Suche durch den ganzen
erreichbaren Raum **nicht** bestätigen — kein einziges Feld hatte den Rohwert `15`.

**Durchbruch:** Die Raum-Rohdaten korrekt dekodiert (bisher falsch angenommene Zeilen-
Schrittweite). Die echte Adressformel (aus `Call_000_2dfe`/`jr_000_2e0a` abgelesen):
`addr = RoomBase[$c500] + 2×swap_nibble(row) + col`, wobei `RoomBase` eine Wort-Tabelle bei
ROM-Adresse `$2047` ist, indiziert über `$c500` (Raum-Index). Damit den ganzen Raum um die
Spielerposition sauber als Gitter rekonstruiert:

```
Spieler bei (row=4, col=1). Nördlich (row=3,col=1) = 29 (0x1d)  <- Riss-Tile!
Noch ein Feld nördlich (row=2,col=1) = 9 (normaler Boden)
Noch ein Feld nördlich (row=1,col=1) = 128 (0x80, Bit7 gesetzt = Kiste!)
```

Das "Loch" ist also **dasselbe Tile wie der bereits bekannte "!!"-Rissboden** (Rohwert `29`,
`Call_000_2f3f`/`Jump_000_3323` — zufallsgesteuerte "!!"-Warnung). Einfaches Drauflaufen
(ein Tastendruck) ist **komplett ungefährlich** (getestet: HP blieb über 100+ Leerlauf-Frames
unverändert, kein verzögerter Fall-Effekt) — der Rissboden selbst tut also nichts Akutes.

**Der Sprung, dynamisch bestätigt:** Ein *schneller* Doppel-Druck derselben Richtung
(press→4 Ticks→release→2 Ticks→press→4 Ticks→release, im Gegensatz zum langsamen
Einzel-Druck-Test) ließ den Spieler in **einem** Bewegungsschritt von `(4,1)` direkt nach
`(2,1)` springen — zwei Felder auf einmal, die Riss-Kachel `(3,1)` komplett übersprungen,
HP unverändert. Per Screenshot visuell bestätigt (Spieler landet zwei Felder weiter, Kiste
jetzt sichtbar näher). Exakt das vom User beschriebene Verhalten.

**Offen:** Die genaue Code-Stelle, die das schnelle Doppel-Drücken erkennt und den
2-Felder-Sprung auslöst, wurde in dieser Session nicht lokalisiert (ein RAM-Diff zwischen
Einzel- und Doppel-Druck-Testlauf zeigte keine eindeutig isolierbare "Doppel-Tipp-Zähler"-
Adresse — zu viele normale bewegungsbedingte Änderungen überlagern das Signal). Reiner
Dokumentations-Fund (keine Code-Änderung), Verhalten aber vollständig dynamisch bestätigt.

## Geheimgang (versteckte Wand) GEFUNDEN UND VOLLSTÄNDIG IM CODE NACHVOLLZOGEN (`save_003.state`)

User-Beschreibung: Spieler steht ein Feld nördlich eines versteckten Durchgangs im Süden;
eine "?"-Sprechblase erscheint über dem Kopf, dieselbe Warnung auch ein Feld weiter links/
rechts (die Wand-Warnung ist also immer drei Felder breit, der Durchgang liegt in der Mitte).
Öffnet sich laut User durch einfaches Dranlaufen.

**Erster (falscher) Ansatz:** Die statische Hypothese aus der letzten Session
("?"-Icon = `Call_000_2f48`, Tile-Rohwert `$09`, dieselbe generische Icon-Check-Familie wie
die "!!"-Rissbodenwarnung `Call_000_2f3f`/`$1d`) ließ sich live **nicht** bestätigen:
`Call_000_2f48` wurde während des gesamten Tests nie aufgerufen (Hook blieb leer), obwohl
die "?"-Blase sichtbar war und der Durchgang sich tatsächlich öffnete. Die Rohwerte der
Nachbarfelder (per Raum-Adressformel aus der Loch-Sprung-Session dekodiert) ergaben zudem
ein unplausibles Bild (Spielerfeld selbst las sich als `9`) — dieser Lead war eine Sackgasse,
genau wie beim Loch-Sprung zuvor.

**Durchbruch per Verhaltenstest:** Norden (echte massive Wand) blockiert den Spieler
**dauerhaft** (`$c125` bleibt für immer im "Anprall"-Zustand `7`, auch nach 60+ Eingabe-
Zyklen). Süden (der beschriebene Geheimgang) hingegen geht nach einer kurzen Verzögerung
ganz regulär auf: `$c125` wechselt zu Zustand `23`, bleibt dort für exakt ~64 Ticks
(ein fester Countdown), und der Spieler läuft danach einfach weiter — Raumwechsel `1 → 2`
bestätigt.

**Vollständig im Code nachvollzogen:** Zustand `23` (`$c125`-Sprungtabelle, Index 23,
Adresse `$3e89`) ist der echte Geheimgang-Enthüllungs-Zustand, neu benannt
`Jump_000_3e89_SecretPassageDispatch`:
- `$c263` ist ein Countdown (neu geladen mit `$10`=16), der die spürbare kurze Pause beim
  "Freischalten" erzeugt.
- `$c20f` ist ein **Pro-Raum-Bitfeld, ein Bit pro Himmelsrichtung**, das markiert, welche
  Wandseite(n) noch einen unentdeckten Geheimgang haben. Live bestätigt: beim Anlaufen der
  Südwand wurde Bit 2 gesetzt (`$c20f = 0b100`).
- Je nach gesetztem Bit springt der Dispatcher in einen von vier Richtungs-Handlern
  (`Jump_000_3eae_SecretPassageDir0` .. `Jump_000_3f2d_SecretPassageDir3`, Bit 0–3). Live
  bestätigt: Bit 2 → `Jump_000_3ed9_SecretPassageDir2` (Süden).
- Jeder Handler löscht sein Bit **dauerhaft** in `$c20f`, lädt daraufhin über dieselbe
  Raum-Verknüpfungstabelle `$206b` (die auch der Warp-Mechanik zugrunde liegt) den
  Ziel-Raum-Index und spiegelt das passende Bit in der Kopfzeile des Nachbarraums — der
  Durchgang ist danach von beiden Seiten aus dauerhaft offen, kein erneutes Suchen nötig.
- Dafür zuständige Helfer umbenannt: `Call_000_3f56_FinalizeSecretPassageDir0`,
  `Call_000_3fa3_FinalizeSecretPassageDir1`, `Call_000_3f7c_FinalizeSecretPassageDir2`,
  `Call_000_3fc9_FinalizeSecretPassageDir3`.

Live-Werteverlauf (south-Test): `$c20f` `0b100` → (nach Countdown) `0` und `$c262` (Ziel-
Raum-Scratch) → `2`, danach `$c125` zurück auf `0`/`1`, Spieler läuft normal weiter,
`$c500` wechselt von `1` auf `2`. Deckt sich exakt mit dem erwarteten Verhalten.

Die drei-Felder-breite "?"-Anzeige selbst (die visuelle Warnung, bevor man anläuft) wurde
nicht bis zur exakten Render-Routine zurückverfolgt — aber der eigentliche Öffnungs-
Mechanismus (das, worum es dem User ging) ist jetzt vollständig im Code belegt und per
Rebuild bit-identisch verifiziert (`10d92861e262069ce31559e12b927aa0`).
