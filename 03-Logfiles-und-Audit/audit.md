# Linux Audit und Fehleranalyse

## Aufgabenstellung

Untersuchung sicherheitsrelevanter Ereignisse
und Analyse von Fehlermeldungen unter AlmaLinux.

## Lernziele

- Audit-Logdateien kennenlernen
- Sicherheitsereignisse untersuchen
- Installationsfehler identifizieren
- Logdateien gezielt durchsuchen

## 1. Audit-Verzeichnis überprüfen

    sudo ls -l /var/log/audit/

## 2. Audit-Logdatei anzeigen

    sudo cat /var/log/audit/audit.log

## 3. Audit-System kennenlernen

    sudo auditctl -s
    sudo auditctl -l

Mit auditctl können der Status und die
konfigurierten Audit-Regeln angezeigt werden.

## 4. Installationsprotokolle untersuchen

    ls -l /var/log/anaconda/

## 5. Fehlermeldungen suchen

    grep -i "error" /var/log/anaconda/*.log

Der Parameter -i ermöglicht eine Suche
unabhängig von Groß- und Kleinschreibung.

## 6. Logdateien in Echtzeit überwachen

Ergänzendes Anwendungsbeispiel:

    sudo tail -f /var/log/audit/audit.log

## Verwendete Befehle

| Befehl | Funktion |
|---|---|
| ls -l | Detaillierte Dateiinformationen |
| cat | Dateiinhalt anzeigen |
| grep -i | Text unabhängig von Schreibweise suchen |
| tail -f | Neue Logeinträge live anzeigen |
| auditctl -s | Audit-Status anzeigen |
| auditctl -l | Audit-Regeln anzeigen |

## Erkenntnisse

Logdateien sind eine wichtige Grundlage
für Fehleranalyse und IT-Sicherheit.

Das Audit-System unterstützt die Überwachung
und Nachvollziehbarkeit sicherheitsrelevanter
Ereignisse.

## Datenschutz und Sicherheit

Originale Logdateien können personenbezogene
Daten und vertrauliche Systeminformationen
enthalten.

Deshalb werden keine vollständigen
Systemprotokolle auf GitHub veröffentlicht.

## Dokumentationsstatus

Rekonstruktion meiner praktischen Übungen,
ergänzt durch Beispiele zur Audit-Analyse.
