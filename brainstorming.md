Um die Spielmechaniken von **Cave Noire** von Grund auf zu verstehen, ist eine Kombination aus statischer Analyse (Disassembly) und dynamischer Analyse (Live-Debugging im Emulator) der effizienteste Weg. Da das Spiel mit 64 KB extrem kompakt und rundenbasiert ist, lässt sich die gesamte Logik sehr gut nachvollziehen.  
Hier ist die strukturierte Zusammenfassung der Quellen, der Vorgehensweise und des Workflows mit mgbdis.

### **1\. Quellen für bereits bekannte Adressen & Algorithmen**

Bevor du bei Null anfängst, kannst du auf das Wissen zurückgreifen, das die Community bereits gesammelt hat:

> * **RetroAchievements (RAM-Map & Code Notes):**  
>   Auf *retroachievements.org* findest du die Spielseite von *Cave Noire*. Unter dem Reiter **"Code Notes"** (sichtbar, wenn man einen kostenlosen Account hat) sind Dutzende RAM-Adressen ($C000–$DFFF) dokumentiert – etwa für HP, Gold, Orbs, Etagen-Tiefe, Inventar-Slots und Gegner-Status. Diese Adressen sind dein wichtigster Einstiegspunkt im Code.  
> * **ROMhacking.net (RHDN) & GitHub (Übersetzungs- & Mod-Dokumentation):**  
  * Suche nach der englischen Übersetzung von **Aeon Genesis** (Gideon Zhi) sowie nach Grafik-Mods (z. B. dem *Void Stranger Mod* auf GitHub/itch.io). In den beiliegenden README-Dateien oder den GitHub-Repositories der Modder sind oft Offsets für Text-Tabellen, Pointer und die Grafik-Kompression dokumentiert.  
> * **Data Crystal (TCRF / Wiki):**  
>   Im *Data Crystal Wiki* (dem technischen Schwester-Wiki von *The Cutting Room Floor*) gibt es oft ROM-Maps zu Konami-Titeln. Da Konami Anfang der 90er auf dem Game Boy (z. B. bei *Nemesis*, *Castlevania* oder *Cave Noire*) sehr ähnliche Sound- und Grafik-Treiber verwendet hat, lassen sich Erkenntnisse aus anderen Konami-GB-Spielen oft 1:1 übertragen.  
> * **GBDev Pan Docs (gbdev.io/pandocs):**  
>   Keine spielspezifische Quelle, aber unverzichtbar als Nachschlagewerk: Hier stehen alle Hardware-Register des Game Boy (z. B. \$FF40 für LCD-Control, \$FF04 für den Divider-Register, den fast alle Spiele als Zufallszahlengenerator/RNG nutzen).

### **2\. Einrichtung & Workflow mit mgbdis**

mgbdis (von Matt Currie) ist ein Python-Skript, das ein Game-Boy-ROM in sauberen RGBDS-Assembler-Code zerlegt, inklusive eines Makefile, mit dem du das ROM direkt wieder neu bauen kannst.

#### **Schritt A: Setup**

> 1. Installiere **Python 3** und die **RGBDS-Toolchain** (rgbasm, rgblink, rgbfix).  
> 2. Lade mgbdis von GitHub (mattcurrie/mgbdis) herunter.  
> 3. Lege dein japanisches *Cave Noire*\-ROM (z. B. cave\_noire.gb) in einen Arbeitsordner.

#### **Schritt B: Erstes Zerlegen (Disassembly)**

Führe mgbdis über die Kommandozeile aus:

Bash  
python3 mgbdis.py cave\_noire.gb \--output-dir src \--print-hex

> * \--print-hex sorgt dafür, dass Hex-Werte und Speicheradressen übersichtlich kommentiert werden.  
> * Im Ordner src/ findest du nun Dateien wie bank\_000.asm, bank\_001.asm usw. sowie ein Makefile.  
> * Teste direkt, ob make im Ordner src/ eine exakte Kopie des Original-ROMs baut.

#### **Schritt C: Code und Daten trennen (Der wichtigste Schritt)**

Ohne Hilfe weiß mgbdis nicht, was Programmcode und was Level-Daten/Grafiken sind, und interpretiert zunächst fast alles als Assembler-Befehle.

> 1. Öffne das Spiel in einem Emulator mit gutem Debugger – ideal sind **SameBoy** oder **BGB** (läuft unter Windows und per Wine unter Linux/macOS).  
> 2. Spiele eine Runde durch alle 4 Dungeons (Schwert, Schild, Gold, Orb), öffne Menüs und kämpfe gegen Gegner.  
> 3. Nutze die **Code/Data-Logger (CDL)**\-Funktion des Emulators (in BGB/SameBoy wird beim Ausführen protokolliert, welche Bytes als Code ausgeführt und welche als Daten gelesen wurden) und exportiere die .cdl-Datei (bzw. Symboldatei .sym).  
> 4. Füttere mgbdis erneut damit:  
>    Bash  
>    python3 mgbdis.py cave\_noire.gb \--cdl cave\_noire.cdl \--output-dir src \--overwrite

>    Jetzt werden Grafiken und Tabellen sauber als db-Blöcke (Data Bytes) getrennt vom echten Programmcode ausgegeben.

### **3\. Vorgehensweise, um die Spielmechaniken zu verstehen**

Wenn du den Code vor dir hast, arbeite dich nicht von Zeile 1 nach unten durch, sondern nutze **Watchpoints (Speicher-Haltepunkte)** im Debugger:

> 1. **Einstieg über RAM-Adressen (z. B. Spieler-HP):**  
   * Suche im RAM-Viewer des Emulators die Adresse deiner aktuellen HP (oder nimm sie aus den RetroAchievements-Notes).  
   * Setze im Debugger einen **Write-Watchpoint** auf diese Adresse.  
   * Lass dich im Spiel von einem Monster treffen. Der Emulator friert exakt an der Stelle im ROM ein, an der der Schaden berechnet und die neuen HP geschrieben werden.  
   * Notiere dir die ROM-Adresse (z. B. Bank 01, \$4A20), suche sie in deiner bank\_001.asm und benenne das Label in CalculateDamage oder SubtractPlayerHP um.  
> 2. **Zufallsgenerator (RNG) & Dungeon-Generierung finden:**  
   * Der Game Boy hat keinen Hardware-Zufallsgenerator. Spiele lesen dafür meistens das Hardware-Register **\$FF04 (rDIV)** aus und verrechnen es mit einer RAM-Variable.  
   * Suche in deinen .asm-Dateien nach ldh a, \[$04]oderlda,[$ff04\]. Die Funktion drumherum ist fast immer der RNG-Algorithmus des Spiels.  
   * Wenn du dort einen Breakpoint setzt und einen neuen Dungeon betrittst, landest du direkt in der **Dungeon-Generierungs-Routine** und siehst, wie Räume, Monster und Truhen ausgewürfelt werden.  
> 3. **Symbole synchron halten:**  
   * Wann immer du in deinen .asm-Dateien eine Funktion oder Variable umbenennst und make ausführst, erzeugt RGBDS automatisch eine .sym-Datei.  
   * Lade diese .sym-Datei in BGB oder SameBoy – ab sofort zeigt dir der Live-Debugger im Emulator deine eigenen Funktionsnamen an, während du spielst.


