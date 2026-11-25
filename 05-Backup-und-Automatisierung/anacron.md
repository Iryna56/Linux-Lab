# Anacron unter Linux

## Aufgabenstellung

Untersuchung zeitgesteuerter Aufgaben auf
Systemen, die nicht dauerhaft eingeschaltet sind.

## Konfiguration anzeigen

    cat /etc/anacrontab

## Konfigurationsdatei bearbeiten

    sudo vi /etc/anacrontab

## Vorgefundene Konfiguration

    SHELL=/bin/sh
    RANDOM_DELAY=45
    START_HOURS_RANGE=3-22

    1  5  cron.daily    nice run-parts /etc/cron.daily
    7  25 cron.weekly   nice run-parts /etc/cron.weekly
    @monthly 45 cron.monthly nice run-parts /etc/cron.monthly

## Bedeutung der Parameter

| Parameter | Bedeutung |
|---|---|
| Period | Ausführungsintervall |
| Delay | Verzögerung in Minuten |
| Job-Identifier | Eindeutiger Aufgabenname |
| Command | Auszuführender Befehl |
| RANDOM_DELAY | Zusätzliche zufällige Verzögerung |
| START_HOURS_RANGE | Erlaubter Startzeitraum |

## Vergleich zwischen Cron und Anacron

| Eigenschaft | Cron | Anacron |
|---|---|---|
| Minutengenaue Planung | Ja | Nein |
| Verpasste Aufgaben nachholen | Normalerweise nein | Ja |
| Tägliche Aufgaben | Ja | Ja |
| Wöchentliche Aufgaben | Ja | Ja |
| Dauerbetrieb erforderlich | Für pünktliche Ausführung | Nein |

## Erkenntnisse

Cron eignet sich für zeitlich genau
geplante Aufgaben.

Anacron eignet sich besonders für Systeme,
die regelmäßig ausgeschaltet werden.

Verpasste periodische Aufgaben können
nachgeholt werden.

## Dokumentationsstatus

Analyse der vorhandenen Anacron-Konfiguration
in meiner virtuellen AlmaLinux-Umgebung.
