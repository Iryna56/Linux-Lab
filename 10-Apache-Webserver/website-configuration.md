# Apache – Erstellung einer Website

## 1. Ziel der Übung

Erstellung und Konfiguration einer eigenen
lokalen Website unter AlmaLinux.

Als Beispiel wird die Domain willkommen.local
verwendet.

## 2. Verzeichnisstruktur erstellen

```bash
sudo mkdir -p /var/www/willkommen.local/public_html
```

Die Option `-p` erstellt auch fehlende
übergeordnete Verzeichnisse.

Verzeichnisstruktur:

```text
/var/www/
└── willkommen.local/
    └── public_html/
        └── index.html
```

## 3. HTML-Datei erstellen

```bash
sudo touch /var/www/willkommen.local/public_html/index.html
```

Datei mit dem Editor öffnen:

```bash
sudo vi /var/www/willkommen.local/public_html/index.html
```

Beispiel einer einfachen HTML-Seite:

```html
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Willkommen</title>
</head>
<body>
    <h1>Willkommen auf meiner Website!</h1>
    <p>Apache-Webserver unter AlmaLinux.</p>
</body>
</html>
```

## 4. Eigentümer und Gruppe

In der praktischen Übung wurde der Benutzer
apache als Eigentümer verwendet.

```bash
sudo chown apache:apache /var/www/willkommen.local/public_html/index.html
```

Bedeutung:

| Element | Beschreibung |
|---|---|
| chown | Eigentümer ändern |
| apache:apache | Benutzer und Gruppe |
| -R | Rekursive Änderung |

Für statische Webseiten muss Apache nicht
der Eigentümer der Dateien sein. Leserechte
und Zugriff auf die Verzeichnisse reichen aus.

## 5. Dateiberechtigungen

Während der Übung wurden die Berechtigungen
mit chmod angepasst.

Empfohlene Berechtigungen für statische
Webinhalte:

```bash
sudo find /var/www/willkommen.local -type d -exec chmod 755 {} +
sudo find /var/www/willkommen.local -type f -exec chmod 644 {} +
```

| Berechtigung | Eigentümer | Gruppe | Andere |
|---|---|---|---|
| 755 | rwx | r-x | r-x |
| 644 | rw- | r-- | r-- |

Verzeichnisse benötigen das Ausführungsrecht,
damit sie betreten werden können.

Statische HTML-Dateien benötigen normalerweise
kein Ausführungsrecht.

## 6. Berechtigungen überprüfen

```bash
ls -lR /var/www/willkommen.local/
```

Inhalt der HTML-Datei anzeigen:

```bash
cat /var/www/willkommen.local/public_html/index.html
```

## 7. HTML-Datei kopieren

In der Übung wurde eine bestehende HTML-Datei
für eine weitere Website verwendet:

```bash
sudo cp /var/www/meineseite.local/public_html/index.html /var/www/Klasse261.local/public_html/index.html
```

Dadurch kann eine vorhandene Website als
Grundlage für weitere Websites dienen.

## 8. Fehlerhafte Verzeichnisse korrigieren

Während der Übung wurde versehentlich
das Verzeichnis publik_html erstellt.

Der korrekte Verzeichnisname lautet public_html,
entsprechend der VirtualHost-Konfiguration.

Ein leeres Verzeichnis entfernen:

```bash
sudo rmdir /pfad/zum/verzeichnis
```

Ein nicht leeres Verzeichnis entfernen:

```bash
sudo rm -r /pfad/zum/verzeichnis
```

Achtung: rm -r löscht auch den gesamten Inhalt.
Vor dem Löschen muss der Pfad überprüft werden.

## 9. Website testen

```bash
sudo apachectl configtest
```

Bei erfolgreicher Konfigurationsprüfung:

```bash
sudo systemctl reload httpd
```

HTTP-Verbindung testen:

```bash
curl http://willkommen.local
```

HTTP-Header anzeigen:

```bash
curl -I http://willkommen.local
```

Der HTTP-Statuscode 200 OK zeigt eine
erfolgreiche HTTP-Anfrage an.

Änderungen an statischen HTML-Dateien benötigen
normalerweise keinen Neustart des Webservers.

## 10. Fazit

In dieser Übung wurden folgende Kenntnisse
praktisch vertieft:

- Verzeichnisverwaltung
- Erstellung von HTML-Dateien
- Dateiberechtigungen
- Benutzer- und Gruppenverwaltung
- Bereitstellung statischer Webinhalte
- Fehleranalyse und Konfigurationsprüfung

