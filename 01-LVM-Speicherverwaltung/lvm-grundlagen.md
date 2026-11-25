# LVM – Praktische Grundlagen

## Aufgabenstellung

Erstellung und Verwaltung von Physical Volumes,
Volume Groups und Logical Volumes unter AlmaLinux.

## Ausgangssituation

Für die praktische Übung wurden zusätzliche
virtuelle Datenträger verwendet.

## 1. Datenträger überprüfen

    lsblk
    lsblk -f

## 2. Physical Volume erstellen

    pvcreate /dev/sdX
    pvs

Ein physischer Datenträger wird für die
Verwendung mit LVM vorbereitet.

## 3. Volume Group erstellen

    vgcreate VG1 /dev/sdX
    vgs

Die Volume Group stellt einen gemeinsamen
Speicherpool zur Verfügung.

## 4. Logical Volumes erstellen

    lvcreate -n LV1 -L 10G VG1
    lvcreate -n LV2 -L 9G VG1
    lvs

Die Volume Group wird in logische
Speichereinheiten unterteilt.

## 5. Dateisysteme erstellen

    mkfs.ext4 /dev/VG1/LV1
    mkfs.ext4 /dev/VG1/LV2

Die Logical Volumes werden mit EXT4 formatiert.

## 6. Mountpoints erstellen

    mkdir -p /mnt/LV1
    mkdir -p /mnt/LV2

## 7. Logical Volumes einhängen

    mount /dev/VG1/LV1 /mnt/LV1
    mount /dev/VG1/LV2 /mnt/LV2

## 8. Konfiguration kontrollieren

    pvs
    vgs
    lvs
    lvdisplay
    lsblk -f
    df -h

## Verwendete Befehle

| Befehl | Funktion |
|---|---|
| pvcreate | Physical Volume erstellen |
| vgcreate | Volume Group erstellen |
| lvcreate | Logical Volume erstellen |
| mkfs.ext4 | EXT4-Dateisystem erstellen |
| mkdir | Verzeichnis erstellen |
| mount | Dateisystem einhängen |
| pvs | Physical Volumes anzeigen |
| vgs | Volume Groups anzeigen |
| lvs | Logical Volumes anzeigen |
| df -h | Speicherbelegung anzeigen |

## Erkenntnisse

Mit LVM können physische Datenträger flexibel
verwaltet und in mehrere logische Volumes
unterteilt werden.

## Dokumentationsstatus

Rekonstruktion anhand meiner gespeicherten
Befehlshistorie. Die ursprünglichen Ausgaben
der Befehle liegen nicht vollständig vor.

## Sicherheitshinweis

/dev/sdX ist ein Platzhalter für einen zuvor
überprüften zusätzlichen Testdatenträger.

pvcreate und mkfs können vorhandene Daten
beschädigen oder löschen.
