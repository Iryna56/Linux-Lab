# Logfiles und Audit unter AlmaLinux

## Aufgabenstellung

Analyse und Verwaltung von Systemprotokollen
sowie Überwachung sicherheitsrelevanter Ereignisse.

## Lernziele

- Linux-Logdateien kennenlernen
- Systemereignisse analysieren
- Fehlermeldungen identifizieren
- Systemd-Journal verwenden
- Audit-Logs untersuchen
- Protokollierungsdienste verwalten

## Verwendete Technologien

- Systemd-Journald
- Rsyslog
- Linux Audit System
- Journalctl
- Grep
- Tail

## Wichtige Logverzeichnisse

| Verzeichnis | Beschreibung |
|---|---|
| /var/log/ | Systemprotokolle |
| /var/log/audit/ | Sicherheitsrelevante Ereignisse |
| /var/log/chrony/ | Zeitsynchronisation |
| /var/log/anaconda/ | Installationsprotokolle |
| /var/crash/ | Absturzberichte, falls vorhanden |

## Praktische Übungen

- [Journalctl und Systemprotokolle](journalctl.md)
- [Audit und Fehleranalyse](audit.md)

## Dokumentationsstatus

Rekonstruktion meiner praktischen Linux-Übungen
anhand der gespeicherten Befehlshistorie.
