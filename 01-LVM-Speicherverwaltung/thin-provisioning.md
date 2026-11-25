# LVM Thin Provisioning

## Aufgabenstellung

Einrichtung eines Thin Pools und eines
virtuellen Thin Volumes.

## Lernziele

- Thin Provisioning verstehen
- Thin Pools erstellen
- Thin Volumes verwalten
- Daten- und Metadatenauslastung kontrollieren

## 1. Vorhandenes Logical Volume konvertieren

    lvconvert --type thin-pool vg_pool/dynamisches_lv

## 2. Thin Volume erstellen

    lvcreate -V 300G -T vg_pool/dynamisches_lv -n thinvolume

## 3. Dateisystem erstellen

    mkfs.xfs /dev/vg_pool/thinvolume

## 4. Mountpoint erstellen

    mkdir -p /mnt/thinvolume

## 5. Dateisystem einhängen

    mount /dev/vg_pool/thinvolume /mnt/thinvolume

## 6. Speicherbelegung kontrollieren

    lvs
    lvs -o +data_percent,metadata_percent
    df -h
    lsblk -f

## Bedeutung der Parameter

| Parameter | Beschreibung |
|---|---|
| -V 300G | Virtuelle Volume-Größe |
| -T | Thin Pool verwenden |
| Data% | Auslastung des Datenbereichs |
| Meta% | Auslastung des Metadatenbereichs |

## Erkenntnisse

Beim Thin Provisioning wird physischer Speicher
erst bei tatsächlicher Nutzung zugewiesen.

Die virtuelle Größe eines Thin Volumes kann
größer als der verfügbare physische Speicher sein.

Die Auslastung des Thin Pools muss regelmäßig
überwacht werden, um Speicherengpässe zu vermeiden.

## Dokumentationsstatus

Rekonstruktion meiner praktischen Übung.
Die erfolgreiche Ausführung aller Schritte
wurde nachträglich nicht vollständig überprüft.
