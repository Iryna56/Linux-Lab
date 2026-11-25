# Apache – Troubleshooting und Fehleranalyse

## 1. Ziel der Dokumentation

Diese Dokumentation beschreibt Fehler,
die während der praktischen Konfiguration
eines Apache-Webservers unter AlmaLinux
aufgetreten sind.

Die Fehler wurden systematisch analysiert
und korrigiert.

## 2. Falscher Benutzername

### Fehler

```bash
sudo chown apace:apache /var/www/
```

### Ursache

Der Benutzername apache wurde falsch geschrieben.

### Lösung

```bash
sudo chown apache:apache /var/www/
```

Benutzer und Gruppe überprüfen:

```bash
getent passwd apache
getent group apache
```

## 3. Falscher Dateiname

### Fehler

```text
index_html
```

### Ursache

Die Standardkonfiguration von Apache erwartet
normalerweise eine Datei namens index.html.

### Lösung

```text
index.html
```

Dateien und Verzeichnisse überprüfen:

```bash
ls -la /var/www/meineseite.local/public_html/
```

## 4. Fehlendes übergeordnetes Verzeichnis

### Fehler

```bash
sudo mkdir /var/www/Klasse261.local/public_html
```

### Ursache

Das übergeordnete Verzeichnis existierte nicht.

### Lösung

```bash
sudo mkdir -p /var/www/Klasse261.local/public_html
```

Die Option -p erstellt fehlende
übergeordnete Verzeichnisse automatisch.

## 5. Falscher Verzeichnisname

### Fehler

```text
publik_html
```

### Korrektur

```text
public_html
```

Der Verzeichnisname muss exakt mit dem
DocumentRoot der Apache-Konfiguration
übereinstimmen.

## 6. Nicht leeres Verzeichnis löschen

### Fehler

```bash
sudo rmdir -r /var/www/willkommen.local/publik_html/
```

### Ursache

rmdir entfernt nur leere Verzeichnisse
und besitzt keine Option -r.

### Lösung

Zuerst den Inhalt überprüfen:

```bash
ls -la /var/www/willkommen.local/publik_html/
```

Anschließend das fehlerhafte Verzeichnis
bei Bedarf rekursiv entfernen:

```bash
sudo rm -r /var/www/willkommen.local/publik_html/
```

Achtung: rm -r löscht auch alle Inhalte
des angegebenen Verzeichnisses.

## 7. Verwechslung von chmod und chown

### Fehler

```bash
sudo chmod 755 apache:apache /var/www/willkommen.local/public_html/index.html
```

### Ursache

chmod verändert Zugriffsrechte.
chown verändert Eigentümer und Gruppe.

### Lösung

```bash
sudo chown apache:apache /var/www/willkommen.local/public_html/index.html
sudo chmod 644 /var/www/willkommen.local/public_html/index.html
```

Für statische HTML-Dateien sind
normalerweise keine Ausführungsrechte nötig.

## 8. Fehlerhafte VirtualHost-Konfiguration

### Fehlermeldung

```text
httpd: Syntax error on line 358 of
/etc/httpd/conf/httpd.conf:

Syntax error on line 10 of
/etc/httpd/conf.d/Klasse.local.conf:

</Virtual> directive missing closing '>'
```

### Ursache

Eine fehlerhafte schließende Direktive
in einer VirtualHost-Konfigurationsdatei.

### Korrekte Syntax

```apache
<VirtualHost *:80>
    ServerName willkommen.local
    DocumentRoot /var/www/willkommen.local/public_html
</VirtualHost>
```

### Fehlerbehebung

Konfigurationsdateien überprüfen:

```bash
ls -la /etc/httpd/conf.d/
```

Fehlerhafte Konfigurationsdatei bearbeiten:

```bash
sudo vi /etc/httpd/conf.d/Klasse261.local.conf
```

Konfiguration erneut überprüfen:

```bash
sudo apachectl configtest
```

Ergebnis nach der Fehlerkorrektur:

```text
Syntax OK
```

Anschließend die Konfiguration neu laden:

```bash
sudo systemctl reload httpd
```

## 9. Überflüssige Konfigurationsdatei

Während der Übung wurde eine nicht mehr
benötigte Konfigurationsdatei entfernt:

```bash
sudo rm /etc/httpd/conf.d/Klasse.local.conf
```

In produktiven Umgebungen sollte vor dem
Entfernen einer Konfigurationsdatei eine
Sicherung erstellt werden.

Danach wurde die gesamte Apache-Konfiguration
erneut überprüft.

## 10. Fehlerhafte HTTP-Adresse

### Fehler

```bash
curl http:/willkommen.local
```

### Lösung

```bash
curl http://willkommen.local
```

Zusätzliche Überprüfung:

```bash
curl -I http://willkommen.local
```

## 11. Logdateien analysieren

Weitere Möglichkeiten zur Fehlerdiagnose:

```bash
sudo journalctl -u httpd -n 50
sudo tail -n 50 /var/log/httpd/error_log
sudo tail -f /var/log/httpd/willkommen.local_error.log
```

## 12. Systematische Fehleranalyse

1. Dienststatus überprüfen.
2. Apache-Konfiguration validieren.
3. Virtual Hosts überprüfen.
4. Dateipfade kontrollieren.
5. Dateiberechtigungen überprüfen.
6. Namensauflösung kontrollieren.
7. Logdateien analysieren.
8. HTTP-Verbindung testen.

## 13. Wichtige Diagnosebefehle

| Befehl | Funktion |
|---|---|
| systemctl status httpd | Dienststatus |
| apachectl configtest | Syntaxprüfung |
| apachectl -S | Virtual Hosts anzeigen |
| ls -la | Dateien und Rechte prüfen |
| getent hosts | Namensauflösung prüfen |
| journalctl -u httpd | Dienstprotokolle |
| tail -f | Logdateien live verfolgen |
| curl -I | HTTP-Header prüfen |
| ss -tlnp | Netzwerkports überprüfen |

## 14. Fazit

Die praktische Übung verdeutlicht die
Bedeutung einer systematischen Fehleranalyse
bei der Administration von Linux-Webservern.

Durch die Überprüfung von Konfigurationen,
Dateipfaden und Berechtigungen konnten
Konfigurationsfehler identifiziert und
behoben werden.

Die abschließende Syntaxprüfung war erfolgreich.

