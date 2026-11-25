# Praktische Übung 181 – Archivierung mit TAR

## 1. Testverzeichnis erstellen

    mkdir -p ~/uebung181

## 2. Testdateien erstellen

    echo "Linux lernen" > ~/uebung181/file1.txt
    echo "Archivierung mit tar" > ~/uebung181/file2.txt

## 3. Dateien kontrollieren

    ls -l ~/uebung181/

## 4. TAR-Archiv erstellen

    tar -cvf ~/uebung181.tar -C ~ uebung181

## 5. Archivinhalt anzeigen

    tar -tf ~/uebung181.tar

## 6. Neue Datei erstellen

    echo "Dritte Datei" > ~/uebung181/file3.txt

## 7. Datei zum Archiv hinzufügen

    tar -rvf ~/uebung181.tar -C ~ uebung181/file3.txt

## 8. Archivinhalt erneut kontrollieren

    tar -tf ~/uebung181.tar

## 9. Datei aus dem Archiv entfernen

    tar --delete -f ~/uebung181.tar uebung181/file2.txt

## 10. Ergebnis kontrollieren

    tar -tf ~/uebung181.tar

## Verwendete TAR-Optionen

| Option | Bedeutung |
|---|---|
| -c | Neues Archiv erstellen |
| -v | Ausführliche Ausgabe |
| -f | Archivdatei angeben |
| -t | Archivinhalt anzeigen |
| -r | Datei zum Archiv hinzufügen |
| -x | Archiv entpacken |
| -C | Arbeitsverzeichnis wechseln |
| --delete | Datei aus dem Archiv entfernen |

## Erkenntnisse

Ein unkomprimiertes TAR-Archiv kann nachträglich
bearbeitet werden.

Dateien können hinzugefügt oder entfernt werden,
ohne das gesamte Archiv neu erstellen zu müssen.

Das Entfernen einer Datei aus dem Archiv
löscht nicht die ursprüngliche Datei.

## Dokumentationsstatus

Die Befehle wurden aus meiner praktischen
Übung rekonstruiert. Die ursprünglichen
Befehlsausgaben liegen nicht vollständig vor.
