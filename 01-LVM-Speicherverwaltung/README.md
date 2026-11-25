# Logical Volume Management (LVM)

## Aufgabenstellung

Einrichtung und Verwaltung von logischen
Speichereinheiten unter AlmaLinux.

## Lernziele

- Physical Volumes (PV) erstellen
- Volume Groups (VG) verwalten
- Logical Volumes (LV) erstellen
- Dateisysteme formatieren
- Logical Volumes erweitern und verkleinern
- RAID 5 konfigurieren
- Thin Provisioning einsetzen
- Speicherbelegung kontrollieren

## Verwendete Technologien

- LVM2
- RAID 5
- Thin Pool
- Thin Volume
- EXT4
- XFS

## Installation

    sudo yum install lvm2 -y
    sudo systemctl enable --now lvm2-monitor
    sudo systemctl status lvm2-monitor

## LVM-Struktur

Physical Volume (PV)
        |
Volume Group (VG)
        |
Logical Volume (LV)
        |
Dateisystem
        |
Mountpoint

## Kontrollbefehle

| Befehl | Beschreibung |
|--------|--------------|
| pvs | Physical Volumes anzeigen |
| vgs | Volume Groups anzeigen |
| lvs | Logical Volumes anzeigen |
| lsblk | Blockgeräte anzeigen |
| lsblk -f | Dateisysteme anzeigen |
| df -h | Speicherbelegung anzeigen |
| lvdisplay | Detaillierte LV-Informationen |
| blkid | UUID und Dateisystemtyp anzeigen |

## Erkenntnisse

LVM ermöglicht eine flexible Speicherverwaltung.
Physische Datenträger können zusammengefasst und
logische Speichereinheiten bedarfsgerecht angepasst
werden.

## Sicherheitshinweis

Alle praktischen Übungen beziehen sich auf eine
virtuelle Testumgebung.

Befehle wie pvcreate, pvremove, lvremove, lvreduce,
mkfs und wipefs können zu Datenverlust führen.
Datenträger müssen vor der Ausführung überprüft werden.
