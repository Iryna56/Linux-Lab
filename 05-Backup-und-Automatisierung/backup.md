# Automatische Datensicherung mit TAR und Cron

## Aufgabenstellung

Automatisierung von Datensicherungen
mithilfe von Cron, TAR und XZ.

## 1. Backup-Verzeichnis erstellen

    sudo mkdir /backup

## 2. Eigentümer konfigurieren

    sudo chown labuser:labuser /backup/

Der Benutzername labuser ist ein Platzhalter.

## 3. Backup-Verzeichnis überprüfen

    ls -ld /backup

## 4. Position der Programme ermitteln

    whereis tar
    whereis ls
    whereis cat

## 5. Ursprüngliche Backup-Aufgabe

Anonymisiertes Beispiel aus der Lernumgebung:

    */2 * * * * /usr/bin/tar -cJpf /backup/home_backup-$(date +\%F_\%H-\%M).tar.xz /home/labuser

Das Backup wird alle zwei Minuten erstellt.
Datum und Uhrzeit werden im Dateinamen gespeichert.

## 6. Bedeutung der TAR-Optionen

| Option | Bedeutung |
|---|---|
| -c | Archiv erstellen |
| -J | XZ-Komprimierung |
| -p | Dateiberechtigungen berücksichtigen |
| -f | Archivdatei angeben |

## 7. Backup kontrollieren

    ls -lh /backup/
    sudo du -sh /backup
    df -h

## 8. Verbesserter Zeitplan

Beispiel für eine tägliche Datensicherung:

    0 2 * * * /usr/bin/tar -cJpf /backup/home_backup-$(date +\%F_\%H-\%M).tar.xz /home/labuser

Dieses Beispiel wurde als Verbesserung
dokumentiert und nicht als getestete
Produktivkonfiguration übernommen.

## Erkenntnisse

Automatisierte Backups reduzieren den
manuellen Verwaltungsaufwand.

Eine Backup-Strategie benötigt zusätzlich
eine Aufbewahrungsregelung, Zugriffsschutz
und regelmäßige Wiederherstellungstests.

## Sicherheitshinweis

Backups können Passwörter, SSH-Schlüssel,
personenbezogene Daten und vertrauliche
Konfigurationsdateien enthalten.

Originale Backup-Archive werden deshalb
nicht auf GitHub veröffentlicht.
