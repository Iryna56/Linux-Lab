# Logical Volumes erweitern und verkleinern

## Aufgabenstellung

Anpassung der Größe von Logical Volumes
und den zugehörigen Dateisystemen.

## 1. EXT4-Volume erweitern

    lvextend -L +3G /dev/VG2/LV3
    resize2fs /dev/VG2/LV3

## 2. Volume und Dateisystem gemeinsam erweitern

    lvextend -r -l +30%FREE VG2/LV3

## 3. XFS-Volume erweitern

    lvextend -L +110G /dev/vg_pool/thinvolume
    xfs_growfs /mnt/thinvolume

## 4. EXT4-Dateisystem überprüfen

    umount /mnt/LV3
    e2fsck -f /dev/VG2/LV3

## 5. Minimale Dateisystemgröße ermitteln

    resize2fs -P /dev/VG2/LV3

## 6. EXT4-Volume verkleinern

Beispiel aus der praktischen Übung:

    lvreduce -r -L 5G VG2/LV3

Vor der Ausführung müssen ein Backup, ein
ausgehängtes Dateisystem und eine ausreichende
Zielgröße sichergestellt werden.

## 7. Ergebnisse kontrollieren

    lvs
    vgs
    lsblk -f
    df -h

## Vergleich der Dateisysteme

| Funktion | EXT4 | XFS |
|---|---|---|
| Erweitern | Ja | Ja |
| Verkleinern | Ja, offline | Nicht unterstützt |
| Werkzeug zum Erweitern | resize2fs | xfs_growfs |

## Erkenntnisse

Die Größe eines Logical Volumes und die Größe
des Dateisystems müssen aufeinander abgestimmt
werden.

Beim Verkleinern darf das Logical Volume nicht
kleiner als das enthaltene Dateisystem werden.

## Sicherheitshinweis

Eine fehlerhafte Verkleinerung kann zu
unwiederbringlichem Datenverlust führen.

## Dokumentationsstatus

Rekonstruktion anhand meiner Befehlshistorie.
Die Befehle dienen der Dokumentation und sind
nicht für eine ungeprüfte Ausführung bestimmt.
