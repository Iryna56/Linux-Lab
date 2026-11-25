# Dateisysteme unter Linux

## Aufgabenstellung

Erstellung, Verwaltung und Einbindung von
Dateisystemen unter AlmaLinux.

## Lernziele

- EXT4 und XFS verstehen
- Dateisysteme erstellen
- Mountpoints verwalten
- UUID ermitteln
- Permanente Einbindung konfigurieren
- Speicherbelegung kontrollieren

## Verwendete Werkzeuge

| Befehl | Funktion |
|---|---|
| mkfs.ext4 | EXT4-Dateisystem erstellen |
| mkfs.xfs | XFS-Dateisystem erstellen |
| mount | Dateisystem einhängen |
| umount | Dateisystem aushängen |
| blkid | UUID ermitteln |
| lsblk -f | Dateisysteme anzeigen |
| df -h | Speicherbelegung anzeigen |
| e2fsck | EXT4-Dateisystem überprüfen |
| resize2fs | EXT4-Größe anpassen |
| xfs_growfs | XFS-Dateisystem erweitern |

## Praktische Übungen

- [EXT4 und XFS](ext4-und-xfs.md)
- [Mount und fstab](mount-und-fstab.md)

## Dokumentationsstatus

Rekonstruktion meiner praktischen Übungen
anhand der gespeicherten Befehlshistorie.
