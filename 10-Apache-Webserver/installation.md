# Apache – Installation und Dienstverwaltung

## 1. Grundlagen

Apache HTTP Server ist ein Webserver, der
Webinhalte über HTTP und HTTPS bereitstellt.

Unter AlmaLinux lautet der Paketname und
Dienstname `httpd`.

## 2. Installation

Falls Apache noch nicht installiert ist:

```bash
sudo dnf install httpd -y
```

In der praktischen Übung war Apache bereits
vorhanden.

## 3. Dienstverwaltung mit systemctl

### Status überprüfen

```bash
sudo systemctl status httpd
```

### Apache starten

```bash
sudo systemctl start httpd
```

### Automatischen Start aktivieren

```bash
sudo systemctl enable --now httpd
```

### Apache stoppen

```bash
sudo systemctl stop httpd
```

### Apache neu starten

```bash
sudo systemctl restart httpd
```

### Konfiguration neu laden

```bash
sudo systemctl reload httpd
```

## 4. Unterschiede zwischen den Befehlen

| Befehl | Funktion |
|---|---|
| start | Dienst starten |
| stop | Dienst stoppen |
| restart | Dienst vollständig neu starten |
| reload | Konfiguration neu einlesen |
| enable | Automatischen Start aktivieren |
| disable | Automatischen Start deaktivieren |
| status | Aktuellen Status anzeigen |

## 5. Apache-Benutzer und Gruppe

Benutzer überprüfen:

```bash
grep apache /etc/passwd
```

Gruppe überprüfen:

```bash
grep apache /etc/group
```

Apache verwendet unter AlmaLinux standardmäßig
den Benutzer und die Gruppe `apache` für
seine Worker-Prozesse.

## 6. Wichtige Verzeichnisse

| Verzeichnis | Funktion |
|---|---|
| /var/www/ | Webinhalte |
| /var/www/html/ | Standard-DocumentRoot |
| /etc/httpd/ | Apache-Konfiguration |
| /etc/httpd/conf.d/ | Zusätzliche Konfigurationen |
| /var/log/httpd/ | Logdateien |

Verzeichnisinhalt überprüfen:

```bash
ls -la /var/www/
```

## 7. Konfiguration überprüfen

Vor einem Neustart oder Reload sollte die
Apache-Konfiguration überprüft werden:

```bash
sudo apachectl configtest
```

Erwartete Ausgabe:

```text
Syntax OK
```

Anschließend:

```bash
sudo systemctl reload httpd
```

## 8. HTTP-Verbindung testen

```bash
curl http://localhost
```

## 9. Fazit

In dieser praktischen Übung wurden die
Dienstverwaltung, die Benutzer- und
Gruppenstruktur sowie die grundlegende
Konfigurationsprüfung von Apache geübt.
