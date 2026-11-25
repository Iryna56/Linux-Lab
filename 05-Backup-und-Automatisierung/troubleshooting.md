# Troubleshooting – Automatisierte Backup-Aufgaben

## Ausgangssituation

Während der Überprüfung meiner virtuellen
AlmaLinux-Umgebung wurden mehrere aktive
Cronjobs aus früheren Übungen festgestellt.

## Problembeschreibung

- Benutzer-Backup alle zwei Minuten
- System-Backup alle zwei Minuten
- Wiederholte Paketinstallation jede Minute
- Unnötige Systembelastung
- Risiko eines zunehmenden Speicherverbrauchs

## Fehleranalyse

Folgende Befehle wurden zur Untersuchung
der Situation verwendet:

    crontab -l
    sudo crontab -l
    cat /etc/crontab
    systemctl status crond --no-pager
    sudo du -sh /backup
    df -h

## Festgestellter Zustand

| Parameter | Ergebnis |
|---|---|
| Cron-Dienst | Active (running) |
| Backup-Verzeichnis | Ca. 780 MB |
| Freier Speicherplatz | Ca. 23 GB |
| Belegung des Dateisystems | Ca. 15 Prozent |

Die Backup-Aufgaben waren weiterhin aktiv.

## Ursache

Die während der praktischen Übungen
eingerichteten Cronjobs waren nach Abschluss
der Übungen nicht deaktiviert worden.

## Empfohlene Fehlerbehebung

1. Benutzer-Crontab überprüfen.
2. Root-Crontab überprüfen.
3. Systemweite Crontab überprüfen.
4. Nicht benötigte Cronjobs auskommentieren.
5. Sinnvolle Backup-Intervalle definieren.
6. Speicherverbrauch regelmäßig kontrollieren.
7. Wiederherstellbarkeit der Backups prüfen.

## Kontrollbefehle

    crontab -l
    sudo crontab -l
    cat /etc/crontab
    df -h
    sudo du -sh /backup

## Lessons Learned

Automatisierte Aufgaben müssen auch nach
ihrer Einrichtung kontrolliert werden.

Zu kurze Ausführungsintervalle können
unnötigen Speicherverbrauch und eine
erhöhte Systembelastung verursachen.

Zur Systemadministration gehören neben
der Einrichtung auch die Überwachung,
Fehleranalyse und Optimierung.

## Dokumentationsstatus

Die Fehleranalyse basiert auf tatsächlich
überprüften Systeminformationen.

Die vollständige Umsetzung und abschließende
Kontrolle der empfohlenen Maßnahmen ist
in dieser Dokumentation noch nicht bestätigt.
