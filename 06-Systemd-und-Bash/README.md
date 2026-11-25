# Systemd und Bash-Scripting

## Aufgabenstellung

Entwicklung eigener Bash-Skripte und
Automatisierung von Systemaufgaben mithilfe
von Systemd Services und Systemd Timern.

## Lernziele

- Bash-Skripte entwickeln
- Ausführungsrechte konfigurieren
- Systeminformationen erfassen
- Logdateien automatisch erstellen
- Eigene Systemd Services konfigurieren
- Zeitgesteuerte Aufgaben mit Timern ausführen
- Dienste überwachen und Fehler analysieren

## Entwicklungsumgebung

- AlmaLinux
- Bash
- Systemd
- Vim
- Git und GitHub

## Projektdateien

| Datei | Beschreibung |
|---|---|
| systemd_sh | Automatische Zeitprotokollierung |
| systemzustand.sh | Erfassung von Systeminformationen |
| systemd_prozess.service | Systemd-Testdienst |
| systemd_prozess.timer | Zeitgesteuerte Ausführung |
| systemzustand.service | Dienst zur Systemüberwachung |

## Funktionsweise

    Systemd Timer
         |
    Systemd Service
         |
    Bash-Skript
         |
    Logdatei

## Erkenntnisse

Bash-Skripte ermöglichen die Automatisierung
wiederkehrender administrativer Aufgaben.

Systemd bietet eine zentrale Verwaltung
von Diensten und zeitgesteuerten Prozessen.

## Dokumentationsstatus

Die Skripte und Konfigurationsdateien basieren
auf meinen praktischen Linux-Übungen.
