# Mountpoints und permanente Einbindung

## Aufgabenstellung

Temporäre und permanente Einbindung von
Dateisystemen unter Linux.

## 1. Mountpoint erstellen

    mkdir -p /mnt/thinvolume

## 2. Dateisystem einhängen

    mount /dev/vg_pool/thinvolume /mnt/thinvolume

## 3. Einbindung kontrollieren

    df -h
    lsblk -f

## 4. UUID ermitteln

    blkid /dev/vg_pool/thinvolume

Die UUID ermöglicht eine eindeutige
Identifikation des Dateisystems.

## 5. Sicherheitskopie erstellen

    cp /etc/fstab /etc/fstab.bak

## 6. Permanente Einbindung konfigurieren

    vi /etc/fstab

Beispiel für einen Eintrag:

    UUID=<UUID> /mnt/thinvolume xfs defaults 0 0

Die UUID muss durch den tatsächlichen Wert
des Dateisystems ersetzt werden.

## 7. Aufbau der fstab

| Feld | Bedeutung |
|---|---|
| UUID | Identifikation des Dateisystems |
| Mountpoint | Einhängepunkt |
| Type | Dateisystemtyp |
| Options | Mount-Optionen |
| Dump | Backup-Einstellung |
| Pass | Reihenfolge der Dateisystemprüfung |

## 8. Konfiguration überprüfen

    findmnt --verify --verbose
    systemctl daemon-reload
    mount -a
    lsblk -f
    df -h

## 9. Dateisystem aushängen

    umount /mnt/thinvolume

## Erkenntnisse

Mit mount werden Dateisysteme temporär
eingebunden.

Die Datei /etc/fstab ermöglicht eine
automatische Einbindung beim Systemstart.

UUIDs sind zuverlässiger als Gerätenamen,
da sich Gerätenamen ändern können.

## Sicherheitshinweis

Fehlerhafte Einträge in /etc/fstab können
zu Problemen beim Systemstart führen.

## Dokumentationsstatus

Rekonstruktion meiner praktischen Übung.
Der fstab-Eintrag ist ein dokumentiertes
Beispiel und keine aktuelle Systemkonfiguration.
