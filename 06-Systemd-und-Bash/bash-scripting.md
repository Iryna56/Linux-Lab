# Bash-Scripting und Systemüberwachung

## Projekt 1 – Automatische Zeitprotokollierung

Das Skript systemd_sh schreibt das aktuelle
Datum und die Uhrzeit in eine Logdatei.

## Projekt 2 – Systeminformationen erfassen

Das Skript systemzustand.sh erfasst:

- Hostname des Computers
- Speicherbelegung der Dateisysteme
- Aktuell ausführender Benutzer

Die Informationen werden in einer
Logdatei gespeichert.

## Verwendete Bash-Befehle

| Befehl | Funktion |
|---|---|
| echo | Text ausgeben |
| date | Datum und Uhrzeit anzeigen |
| hostname | Computernamen anzeigen |
| df -h | Speicherbelegung anzeigen |
| whoami | Aktuellen Benutzer anzeigen |
| chmod +x | Skript ausführbar machen |
| bash | Bash-Skript ausführen |

## Bash-Syntax

Die Zeichenfolge $(Befehl) ermöglicht eine
Command Substitution.

Die Ausgabe eines Befehls kann dadurch
direkt in einem Text verwendet werden.

Der Operator >> hängt neue Informationen
an eine bestehende Datei an.

## Syntaxprüfung

    bash -n systemd_sh
    bash -n systemzustand.sh

## Ergebnisse

Bei der Überprüfung der Lernumgebung wurden
vorhandene Logeinträge des Systemzustand-
Skripts festgestellt.

## Sicherheitshinweis

Die Skripte wurden für eine virtuelle
Testumgebung entwickelt.

Für den produktiven Einsatz wären weitere
Maßnahmen erforderlich, insbesondere
sichere Logdateipfade, Fehlerbehandlung
und Logrotation.
