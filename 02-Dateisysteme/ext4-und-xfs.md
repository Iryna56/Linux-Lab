# EXT4 und XFS

## Aufgabenstellung

Formatierung und Verwaltung von Logical Volumes
mit unterschiedlichen Dateisystemen.

## 1. Vorhandene Datenträger überprüfen

    lsblk
    lsblk -f
    lvs

## 2. EXT4-Dateisystem erstellen

    mkfs.ext4 /dev/VG1/LV1
    mkfs.ext4 /dev/VG1/LV2

## 3. XFS-Dateisystem erstellen

    mkfs.xfs /dev/vg_pool/thinvolume

## 4. Dateisysteme kontrollieren

    lsblk -f
    blkid
    df -h

## 5. Vergleich

| Eigenschaft | EXT4 | XFS |
|---|---|---|
| Journaling | Ja | Ja |
| Online-Erweiterung | Ja | Ja |
| Verkleinerung | Offline möglich | Nicht möglich |
| Formatierung | mkfs.ext4 | mkfs.xfs |
| Erweiterung | resize2fs | xfs_growfs |

## Erkenntnisse

Die Wahl des Dateisystems hängt von den
Anforderungen des jeweiligen Systems ab.

EXT4 bietet die Möglichkeit einer Verkleinerung.
XFS eignet sich besonders für große Dateisysteme.

## Sicherheitshinweis

Eine Formatierung kann vorhandene Daten löschen.
Die verwendeten Logical Volumes stammen aus
meiner virtuellen Testumgebung.

## Dokumentationsstatus

Rekonstruktion anhand meiner Befehlshistorie.
Die ursprünglichen Befehlsausgaben liegen
nicht vollständig vor.
