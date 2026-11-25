# Systemd Services und Timer

## Aufgabenstellung

Automatische Ausführung eigener Bash-Skripte
mithilfe von Systemd.

## Verwendete Unit-Typen

### Service

Definiert den auszuführenden Prozess.

Type=oneshot eignet sich für Aufgaben,
die nach ihrer Ausführung beendet werden.

### Timer

Definiert den Zeitpunkt beziehungsweise
das Intervall einer Ausführung.

## Verwendete Befehle

    systemctl daemon-reload
    systemctl start systemd_prozess.service
    systemctl status systemd_prozess.service
    systemctl enable --now systemd_prozess.timer
    systemctl list-timers --all
    systemctl status systemd_prozess.timer

## Fehleranalyse

    journalctl -u systemd_prozess.service
    tail -n 10 /tmp/systemd-test.log
    tail -n 10 /tmp/system-info.log

## Wichtige Parameter

| Parameter | Funktion |
|---|---|
| Description | Beschreibung der Unit |
| Type=oneshot | Einmalige Prozessausführung |
| ExecStart | Auszuführender Befehl |
| WantedBy | Zuordnung zu einem Systemd-Target |
| daemon-reload | Unit-Konfigurationen neu laden |
| start | Dienst starten |
| enable | Automatischen Start konfigurieren |
| status | Zustand überprüfen |

## Ergebnis der Systemüberprüfung

Der Timer systemd_prozess.timer war aktiv.
Die angezeigten Ausführungszeitpunkte lagen
zwei Minuten auseinander.

Die Service-Dateien systemd_prozess.service
und systemzustand.service waren vorhanden.

Ein separater systemzustand.timer wurde
am überprüften Speicherort nicht gefunden.

## Lessons Learned

Systemd Services und Timer ermöglichen
eine flexible Automatisierung von Aufgaben.

Dienste können zentral verwaltet,
überwacht und analysiert werden.

## Sicherheitshinweis

Die Konfigurationsdateien enthalten Pfade
aus meiner virtuellen Lernumgebung.

Vor einer Installation auf anderen Systemen
müssen diese Pfade und Berechtigungen
überprüft und angepasst werden.
