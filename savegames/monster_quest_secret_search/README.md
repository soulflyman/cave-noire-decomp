# Savegame: Monster-Quest, Level 1 — Dungeon-Raum ohne gefundene Treppe/Geheimgang

## Kontext

Dieser Spielstand steht direkt im Dungeon von **Quest 1 (Monster-Typ, "3 Monster
besiegen"), Level 1**, Etage B1F — unmittelbar nach dem Eintritt (HP 10/10, Monster 0/3).

In diesem Raum wurde ausführlich (aber erfolglos) nach einer Treppe und einem
Geheimgang gesucht:

- **Keine Treppe gefunden**, obwohl Treppen laut Spielregeln von Anfang an frei
  zugänglich sein sollten (siehe `NOTES.md` im Projekt-Hauptordner, Abschnitt
  "Etagentiefe").
- **Kein Geheimgang gefunden** (keine "?"-Sprechblase an irgendeiner der vier
  Raumecken oder an den 29 kartierten begehbaren Feldern), siehe Abschnitt
  "Geheimgänge im Monster-Quest-Testraum" in `NOTES.md`.

Die zentrale kreisförmige Plattform im Raum wurde nur als massive Wand getestet
(von allen 4 Außenseiten blockiert), nie auf eine versteckte Interaktion (z. B. ein
"Fake Pit" oder eine andere Mechanik).

**Mögliche nächste Schritte beim manuellen Testen:**
- Gezielt an der zentralen Plattform nach einer "?"-Markierung suchen (diagonal
  danebenstehen, nicht nur orthogonal).
- Das Missionsziel (3 Monster besiegen) tatsächlich abschließen und prüfen, ob
  danach eine Tür/Treppe erscheint.

## Verwendete ROM

- **Datei:** `Cave Noire (Japan).gb` (japanisches Original)
- **MD5:** `10d92861e262069ce31559e12b927aa0`

Die ROM-Datei selbst liegt **nicht** in diesem Ordner (Copyright) — du brauchst deine
eigene Kopie mit exakt diesem MD5-Hash, sonst lädt der Spielstand nicht korrekt.

## Spielstand laden

Der Spielstand (`dungeon.state`) ist ein **PyBoy-Savestate** (Python-Emulator,
nicht kompatibel mit SameBoy/BGB-Savestates). Erstellt mit **PyBoy Version 2.9.0**.

### Mit PyBoy (Python, auch mit Fenster/GUI statt headless)

```bash
pip install pyboy
python3 -c "
from pyboy import PyBoy

pyboy = PyBoy('/pfad/zu/Cave Noire (Japan).gb')  # ohne window='null' -> zeigt Fenster
with open('dungeon.state', 'rb') as f:
    pyboy.load_state(f)

while pyboy.tick():
    pass
"
```

- Lass `window='null'` beim `PyBoy(...)`-Aufruf weg, dann öffnet sich ein normales
  Fenster, das du mit der Tastatur steuern kannst (Standardbelegung: Pfeiltasten,
  `A`-Taste meist `A`/`Z`, `B`-Taste meist `S`/`X` — siehe PyBoy-Dokumentation für
  die genaue Tastenbelegung auf deinem System).
- `pyboy.tick()` einmal pro Frame aufrufen lässt das Spiel normal mit Echtzeit-Tempo
  laufen inklusive Fenster-Eingabe.

### Relevante RAM-Adressen für eigene Experimente

- `$c120` — Spieler-HP (BCD-kodiert)
- `$c503` / `$c504` — Spieler-Kachelposition (Y bzw. X)
- `$c104` — aktuelle Etage
- `$c128` — Gold-Fortschritt (nur bei Gold-Quests aktiv)
- `$c16a` — Monster-Kill-Fortschritt (nur bei Monster-Quests aktiv)

Vollständige Dokumentation aller Funde: `NOTES.md` im Projekt-Hauptordner.
