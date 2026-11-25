# Cron und Crontab

## Aufgabenstellung

Zeitgesteuerte Ausführung wiederkehrender
Aufgaben unter Linux.

## 1. Cronie installieren

    sudo yum install cronie -y

## 2. Dienst überprüfen

    systemctl status crond

## 3. Benutzer-Crontab bearbeiten

    crontab -e

## 4. Benutzer-Crontab anzeigen

    crontab -l

## 5. Root-Crontab bearbeiten

    sudo crontab -e

## 6. Root-Crontab anzeigen

    sudo crontab -l

## 7. Systemweite Crontab bearbeiten

    sudo vi /etc/crontab

## Aufbau eines Cronjobs

    * * * * * Befehl

| Position | Bedeutung | Wertebereich |
|---|---|---|
| 1 | Minute | 0-59 |
| 2 | Stunde | 0-23 |
| 3 | Tag des Monats | 1-31 |
| 4 | Monat | 1-12 |
| 5 | Wochentag | 0-7 |

## Beispiele

| Ausdruck | Ausführung |
|---|---|
| */2 * * * * | Alle zwei Minuten |
| 0 * * * * | Jede volle Stunde |
| 0 2 * * * | Täglich um 02:00 Uhr |
| 0 8 * * 1 | Jeden Montag um 08:00 Uhr |
| 0 0 1 * * | Am ersten Tag jedes Monats |

## Unterschiede

Die Benutzer-Crontab führt Aufgaben mit den
Berechtigungen des jeweiligen Benutzers aus.

Die Root-Crontab führt Aufgaben mit
administrativen Berechtigungen aus.

Die systemweite Crontab enthält zusätzlich
ein Feld für den ausführenden Benutzer.

## Erkenntnisse

Cron ermöglicht die automatische Ausführung
regelmäßig wiederkehrender Aufgaben.

Ausführungsintervalle und Berechtigungen
müssen sorgfältig festgelegt werden.
