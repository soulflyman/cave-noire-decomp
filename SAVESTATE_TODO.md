# Offene Validierungen, die einen passenden Savestate brauchen

Diese Liste sammelt alle Erkenntnisse aus NOTES.md, die bisher nur **statisch** (per
Disassembly-Lektüre) oder nur **teilweise dynamisch** hergeleitet wurden und einen
bestimmten Spielzustand/Savestate brauchen, um sie per PyBoy sauber zu verifizieren.
Format: Was validiert werden muss → welcher Spielzustand dafür nötig ist → Verweis auf die
NOTES.md-Stelle mit dem aktuellen Zwischenstand.

## Dungeon-Sonderfelder (Task #7)

- **Dunkelheit/Fackel-Mechanik**: Sichtradius-Berechnung, "aufgedeckte Kachel"-Bitmap,
  Dither-Tile-Grafik, Augenpaar-Monster-Sprite. Braucht einen Savestate **mehrere Etagen
  tief** (laut User erst auf tieferen Etagen aktiv) in einem Raum mit aktiver Verdunkelung.
  → NOTES.md: "Dunkelheit/Fackel-Mechanik — Grafik-Suche (kein Treffer, Ansatz dokumentiert)"
- **"!!"-Bodenbruch-Warnsymbol** (`Call_000_2f3f`/`Jump_000_3323`, Symbol-Tile `$5a`):
  nur statisch hergeleitet. Braucht einen Savestate auf/neben einer tatsächlich
  bröckelnden Bodenkachel (Tile-ID `$1d` oder `$23` in Bewegungsrichtung), um das Symbol
  per OAM-Tile-Scan zu bestätigen.
  → NOTES.md: "Dungeon-Sonderfelder — Tile-Klassen-Dispatcher gefunden"
- **"?"-Geheimwand-Warnsymbol** (`Call_000_2f48`/`Jump_000_3327`, Symbol-Tile `$42`):
  gleiches Problem — Savestate neben einer Kachel mit Tile-ID `$09` nötig.
- **Sprung-über-Grube-Symbol** (`Call_000_3772`/`Jump_000_332b`, Symbol-Tile `$56`):
  Savestate direkt vor einer Grube (Tile-ID `$0f` in Blickrichtung) nötig.
- **Warp-Mechanik** (`$c427`/`$c428`-Adresspaar, Tile-Klasse `$0b`): plausibel aus dem
  Code hergeleitet, aber kein einziger Warp-Schritt dynamisch durchgeführt. Savestate direkt
  auf/neben einer Warp-Kachel nötig, um Positionssprung + die beiden WRAM-Adressen zu
  bestätigen.
- **Lava**: keine Tile-Klasse identifiziert. Savestate in einem Raum mit Lava-Feldern nötig
  (Dungeon mit Lava-Dekoration, laut Wiki z. B. Salamander-Spawn-Gebiet).
- **Tür (Dungeon-Ausgang)**: keine Tile-Klasse identifiziert. Savestate nach erfülltem
  Questziel, direkt vor der Ausgangstür.
- **Fairy Cage**: komplett ungeprüft. Savestate in einer Fairy-Quest mit sichtbarem Käfig
  + passendem Schlüssel-Item im Inventar.
- **Ganseki-Effekt** (Grube füllen/Felsbarrikade, vermutlich `Call_000_2f48`-Verwandter bei
  `bank_001.asm:$53a2`): Savestate mit Ganseki-Item im Inventar, neben einer Grube.
- **Oriru-Effekt** (Treppe auf Nachbarfeld setzen, vermutlich `Call_000_2f4c`-Nutzer bei
  `bank_001.asm:$572c`): Savestate mit Oriru-Item im Inventar.

## Monster-System (Task #6)

- **Monster-Typ → Stats-Tabelle**: bisher nur Typ `$01` (= vermutlich Crab, HP 5,
  horizontale Bewegung) durch echten Kampf bestätigt. Für die übrigen 22 Wiki-Monstertypen
  fehlen Savestates mit jeweils einem sichtbaren, noch ungeschädigten Exemplar (Struct-Offset
  `$06`/`$09` ablesen, Bewegungsmuster über mehrere Züge beobachten).
  → NOTES.md: "Monster-Struct-Layout GELÖST (Task #6): Offset `$06` = aktuelle HP..."
- **Struct-Offsets `$05`/`$07`/`$08`** (bisher immer `2`/`4`/`2` bei Typ `$01`): erst mit
  mindestens einem zweiten Monstertyp unterscheidbar, ob das Angriff/Verteidigung/Lucky-
  ähnliche Typ-Attribute sind oder konstant über alle Typen.
- **Offset `$00`-Bedeutung** (immer `6` bei lebenden Monstern in allen bisherigen Tests):
  mit einem andersartigen Monstertyp prüfen, ob der Wert variiert (Typ-Kategorie?) oder
  wirklich immer `6` ist.

## Item-System (Task #11)

- **~18 noch nicht zugeordnete Item-Typ-IDs**: Kaifuku (Heilung), Dokukeshi (Gift entfernen),
  Tobu (Warp-Auswahl), Change (Monster abschwächen), Mamori (Verteidigung temp.), Toumei
  (Unsichtbarkeit), Lucky (+1 Lucky, kein Slot), Oriru, Akari (Dunkelheit entfernen), Fire,
  Faigaa, Ganseki, Kagi (Fairy-Käfig-Schlüssel), Gold (kein Slot). Für jedes Item ein
  Savestate mit genau diesem Item im Inventar (`wInventory`/`$c140`-`$c147`), dann benutzen
  und `$c516`/Effekt-Dispatcher-Sprung beobachten.
  → NOTES.md: "Item-System GEKLÄRT (Task #11)"
- **Schwert/Schild-Bonus tatsächlich im Kampf wirksam**: `SwordAttackBonusByItemID`/
  `ShieldDefenseBonusByItemID` ($510a/$510e) sind nur über die ROM-Tabelle bestätigt, nicht
  durch einen echten Kampf mit ausgerüsteter Waffe/Schild. Savestate mit einem der 8
  Waffen-/Schild-Items im Inventar + anschließendem Kampftest nötig.

## Sonstiges

- **Treppen-Anomalie im Monster-Quest-Testraum (Quest 1, Level 1)**: In diesem spezifischen
  Raum wurde trotz vollständiger Kartierung keine Treppe gefunden. Ungeklärt, ob das ein
  Sonderfall dieses Raums ist oder genereller für diesen Quest-Typ/Level gilt — Savestate
  von Quest 1 auf einem höheren Level nötig, um zu vergleichen.
  → NOTES.md: "Etagentiefe GELÖST" (Abschnitt zum Monster-Quest-Testraum ohne Treppe)
- **Geheimgänge im Monster-Quest-Testraum**: gesucht, nicht gefunden — eventuell ebenfalls
  ein Sonderfall dieses Raums; mit einem anderen Dungeon/Quest-Typ erneut versuchen.
- **`bank_002.asm`-Datenbereich `$6e00`-`$6e37`** (Quest-Ziel-Header/Tabellen): Die beiden
  Labels `jr_002_6e0d`/`jr_002_6e39` könnten echte, erreichbare Sprungziele sein oder reine
  Fehldekodierungs-Artefakte. Mit einem PyBoy-Hook auf genau diese beiden Adressen während
  eines echten Quest-Starts (alle 4 Quest-Typen durchprobieren) ließe sich klären, ob sie
  jemals angesprungen werden.
- **Game-Over-Trigger #3** (`$0d4c`, gated über einen `$c149`-Countdown in einem bisher nicht
  identifizierten Spielzustand): welcher konkrete Spielzustand das ist, wurde nicht
  zurückverfolgt. Savestate kurz vor diesem spezifischen Game-Over nötig.
- **Quest-Typ 3/4 (Orb/Fairy) Fortschritts-/Zieladressen**: über die ROM-Bank-2-Headertabelle
  statisch hergeleitet (Task #9), aber anders als Quest 1/2 nicht per Live-Hook am
  tatsächlichen HUD bestätigt. Savestates mit laufender Orb- bzw. Fairy-Quest nötig.
