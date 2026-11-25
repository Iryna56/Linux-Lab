# RAID 5 mit LVM

## Aufgabenstellung

Einrichtung eines RAID-5-Verbundes mit LVM
unter AlmaLinux.

## Lernziele

- Mehrere Datenträger zusammenfassen
- RAID 5 mit LVM konfigurieren
- Redundanz und Parität verstehen
- RAID-Synchronisation kontrollieren

## 1. Datenträger überprüfen

    lsblk
    lsblk -f

## 2. Physical Volumes erstellen

    pvcreate /dev/sdX /dev/sdY /dev/sdZ
    pvs

## 3. Volume Group erstellen

    vgcreate vg_pool /dev/sdX /dev/sdY /dev/sdZ
    vgs

## 4. RAID-5-Volume erstellen

    lvcreate --type raid5 -i 2 -l 50%FREE -n dynamisches_lv vg_pool

## 5. RAID-Konfiguration überprüfen

    lvs
    lvs -a -o +devices

## 6. RAID-Synchronisation überprüfen

    lvchange --syncaction check vg_pool/dynamisches_lv

    lvs -a -o lv_name,segtype,raid_sync_action,raid_mismatch_count,copy_percent vg_pool

## Bedeutung der Parameter

| Parameter | Beschreibung |
|---|---|
| --type raid5 | RAID-5-Volume erstellen |
| -i 2 | Zwei Daten-Stripes |
| -l 50%FREE | 50 Prozent der freien Extents anfordern |
| -n | Name des Logical Volumes |
| --syncaction check | RAID-Konsistenz überprüfen |

## Erkenntnisse

RAID 5 verteilt Daten und Paritätsinformationen
auf mindestens drei Datenträger.

Der Ausfall eines Datenträgers kann toleriert
werden. RAID ersetzt jedoch kein Backup.

## Sicherheitshinweis

Die Gerätenamen sdX, sdY und sdZ sind Platzhalter
für zusätzliche, überprüfte Testdatenträger.

## Dokumentationsstatus

Rekonstruktion anhand meiner Befehlshistorie.
Die ursprünglichen Befehlsausgaben liegen nicht
vollständig vor.
