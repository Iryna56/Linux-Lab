# Apache – Virtual Hosts

## 1. Grundlagen

Virtual Hosts ermöglichen den Betrieb mehrerer
Websites auf einem einzigen Apache-Webserver.

Jede Website besitzt einen eigenen Domainnamen,
ein eigenes DocumentRoot und eine eigene
Konfigurationsdatei.

## 2. Praktische Übung

Im Rahmen der Übung wurden drei lokale
Websites eingerichtet:

| Domain | DocumentRoot |
|---|---|
| meineseite.local | /var/www/meineseite.local/public_html |
| Klasse261.local | /var/www/Klasse261.local/public_html |
| willkommen.local | /var/www/willkommen.local/public_html |

Alle Websites verwenden HTTP über Port 80.

## 3. Verzeichnis erstellen

```bash
sudo mkdir -p /var/www/willkommen.local/public_html
```

HTML-Datei erstellen:

```bash
sudo touch /var/www/willkommen.local/public_html/index.html
```

## 4. Virtual Host konfigurieren

Konfigurationsdatei erstellen und bearbeiten:

```bash
sudo vi /etc/httpd/conf.d/willkommen.local.conf
```

Inhalt der Konfigurationsdatei:

```apache
<VirtualHost *:80>
    ServerAdmin webmaster@willkommen.local
    ServerName willkommen.local
    ServerAlias www.willkommen.local
    DocumentRoot /var/www/willkommen.local/public_html
    ErrorLog /var/log/httpd/willkommen.local_error.log
    CustomLog /var/log/httpd/willkommen.local_access.log combined
</VirtualHost>
```

## 5. Bedeutung der Direktiven

| Direktive | Beschreibung |
|---|---|
| VirtualHost *:80 | HTTP-Verbindungen auf Port 80 |
| ServerAdmin | Kontaktadresse des Administrators |
| ServerName | Hauptdomain der Website |
| ServerAlias | Zusätzlicher Domainname |
| DocumentRoot | Speicherort der Webinhalte |
| ErrorLog | Fehlerprotokoll |
| CustomLog | Zugriffsprotokoll |

## 6. Lokale Namensauflösung

Für die lokale Namensauflösung wird
die Datei /etc/hosts bearbeitet:

```bash
sudo vi /etc/hosts
```

Beispiel für den Zugriff innerhalb derselben VM:

```text
127.0.0.1 meineseite.local
127.0.0.1 Klasse261.local
127.0.0.1 willkommen.local www.willkommen.local
```

Dadurch können die Websites ohne einen
zusätzlichen DNS-Server aufgerufen werden.

Für den Zugriff von einem anderen Rechner
muss die IP-Adresse des Webservers verwendet
und die Namensauflösung dort eingerichtet werden.

## 7. Konfiguration überprüfen

```bash
sudo apachectl configtest
```

Erwartetes Ergebnis:

```text
Syntax OK
```

Alle konfigurierten Virtual Hosts anzeigen:

```bash
sudo apachectl -S
```

## 8. Konfiguration übernehmen

```bash
sudo systemctl reload httpd
```

Dienststatus überprüfen:

```bash
sudo systemctl status httpd
```

## 9. Websites testen

```bash
curl http://meineseite.local
curl http://Klasse261.local
curl http://willkommen.local
```

Alternativ können die Websites im Browser
aufgerufen werden.

## 10. Fehleranalyse

Während der praktischen Übung traten
Syntaxfehler in den Konfigurationsdateien auf.

Eine fehlerhafte schließende VirtualHost-Direktive
führte zu einem Konfigurationsfehler.

Die Fehler wurden mithilfe von

```bash
sudo apachectl configtest
```

identifiziert und korrigiert.

Nach der Fehlerbehebung wurde die
Konfiguration erfolgreich validiert.

## 11. Fazit

Durch Virtual Hosts können mehrere Websites
unabhängig voneinander auf einem einzigen
Apache-Webserver betrieben werden.

Die Trennung von Webinhalten, Konfigurationen
und Logdateien erleichtert die Administration
und Fehleranalyse.

