# Journalctl und Systemprotokolle

## Aufgabenstellung

Analyse von Systemereignissen mit Journalctl
und Verwaltung der Protokollierungsdienste.

## 1. Logverzeichnisse untersuchen

    ls -l /var/log/
    ls -l /var/log/chrony/
    ls -l /var/log/anaconda/

## 2. Rsyslog überprüfen

    systemctl status rsyslog

## 3. Journald-Konfiguration bearbeiten

    vi /etc/systemd/journald.conf

## 4. Journald neu starten

    systemctl restart systemd-journald
    systemctl status systemd-journald

## 5. Meldungen des aktuellen Systemstarts

    journalctl -b

## 6. Systemmeldungen anzeigen

    journalctl --system

## 7. Letzte Meldungen anzeigen

    journalctl -n 50
    journalctl -n 10

## 8. Kritische Meldungen filtern

    journalctl -p crit

## 9. Zeitbasierte Filterung

    journalctl --since today
    journalctl --since "30 min ago"

## 10. Meldungen eines bestimmten Dienstes

    journalctl -u systemd_prozess.service

## Befehlsübersicht

| Parameter | Bedeutung |
|---|---|
| -b | Meldungen des aktuellen Systemstarts |
| -n | Anzahl der letzten Meldungen |
| -p | Filterung nach Priorität |
| -u | Filterung nach Systemd-Unit |
| --since | Beginn des gewünschten Zeitraums |
| --system | Systemjournal anzeigen |

## Erkenntnisse

Journalctl ermöglicht eine gezielte Analyse
von Systemereignissen.

Durch zeitbasierte Filter und Prioritäten
können relevante Fehlermeldungen schneller
identifiziert werden.

## Dokumentationsstatus

Rekonstruktion anhand meiner Befehlshistorie.
Die konkreten Änderungen an der Journald-
Konfiguration sind nicht vollständig dokumentiert.
