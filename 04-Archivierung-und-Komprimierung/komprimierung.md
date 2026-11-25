# Komprimierungsverfahren unter Linux

## Aufgabenstellung

Erstellung und Vergleich komprimierter
TAR-Archive mit Gzip, Bzip2 und XZ.

## 1. Gzip-Komprimierung

    tar -czvf ~/uebung181.tar.gz -C ~ uebung181

## 2. Bzip2-Komprimierung

    tar -cjvf ~/uebung181.tar.bz2 -C ~ uebung181

## 3. XZ-Komprimierung

    tar -cJvf ~/uebung181.tar.xz -C ~ uebung181

## 4. Dateigrößen vergleichen

    ls -lh ~/uebung181.tar*

## 5. Zielverzeichnis erstellen

    mkdir -p ~/entpackt181

## 6. Gzip-Archiv entpacken

    tar -xzvf ~/uebung181.tar.gz -C ~/entpackt181/

## 7. Entpackte Dateien kontrollieren

    ls -l ~/entpackt181/uebung181/

## Vergleich der Komprimierungsverfahren

| Eigenschaft | Gzip | Bzip2 | XZ |
|---|---|---|---|
| Dateiendung | .gz | .bz2 | .xz |
| TAR-Option | -z | -j | -J |
| Geschwindigkeit | Häufig schnell | Häufig langsamer | Häufig langsamer |
| Komprimierungsrate | Gut | Häufig höher | Häufig sehr hoch |

Die tatsächliche Komprimierungsrate und
Geschwindigkeit hängen von den Daten,
den Einstellungen und der Hardware ab.

## Erkenntnisse

Gzip eignet sich häufig für schnelle
Komprimierungsaufgaben.

XZ bietet häufig eine hohe Komprimierungsrate,
benötigt jedoch mehr Rechenzeit.

Komprimierte Archive sind besonders für
Datensicherung und Dateiübertragung geeignet.

## Dokumentationsstatus

Rekonstruktion anhand meiner Befehlshistorie.

Die ursprünglichen Dateigrößen und Laufzeiten
wurden nicht gespeichert. Deshalb enthält
diese Dokumentation keine erfundenen Messwerte.
