# Apache – Firewall und SELinux

## 1. Grundlagen

Für den sicheren Betrieb eines Apache-Webservers
unter AlmaLinux sind mehrere Sicherheitsebenen
zu berücksichtigen:

- Firewall (firewalld)
- SELinux
- Dateiberechtigungen
- Benutzer und Gruppen

Dieses Kapitel ergänzt die praktische Übung
um weiterführende Sicherheitsmaßnahmen.

## 2. Standardports

| Protokoll | Port | Funktion |
|---|---|---|
| HTTP | 80/TCP | Unverschlüsselte Verbindung |
| HTTPS | 443/TCP | Verschlüsselte Verbindung |

## 3. Firewall überprüfen

Status des Firewall-Dienstes anzeigen:

```bash
sudo systemctl status firewalld
```

Aktive Zonen anzeigen:

```bash
sudo firewall-cmd --get-active-zones
```

Aktuelle Firewall-Konfiguration anzeigen:

```bash
sudo firewall-cmd --list-all
```

## 4. HTTP-Zugriff erlauben

HTTP-Dienst dauerhaft freigeben:

```bash
sudo firewall-cmd --permanent --add-service=http
```

Firewall-Konfiguration neu laden:

```bash
sudo firewall-cmd --reload
```

Freigegebene Dienste überprüfen:

```bash
sudo firewall-cmd --list-services
```

HTTPS bei Bedarf freigeben:

```bash
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --reload
```

Für HTTPS muss zusätzlich eine TLS-Konfiguration
mit einem Zertifikat eingerichtet werden.

## 5. SELinux

SELinux steht für Security-Enhanced Linux.

Es erweitert die klassischen Linux-Zugriffsrechte
durch zusätzliche Sicherheitsrichtlinien.

SELinux-Status überprüfen:

```bash
getenforce
```

Detaillierte Informationen anzeigen:

```bash
sestatus
```

## 6. SELinux-Modi

| Modus | Beschreibung |
|---|---|
| Enforcing | Sicherheitsrichtlinien werden durchgesetzt |
| Permissive | Verstöße werden protokolliert |
| Disabled | SELinux ist deaktiviert |

Für einen sicheren Betrieb wird Enforcing
empfohlen.

## 7. SELinux-Kontext überprüfen

```bash
ls -lZ /var/www/willkommen.local/public_html/
```

Der typische SELinux-Dateityp für statische
Apache-Webinhalte lautet:

```text
httpd_sys_content_t
```

Standardkontexte wiederherstellen:

```bash
sudo restorecon -Rv /var/www/willkommen.local/
```

## 8. SELinux-Fehler analysieren

Aktuelle SELinux-Verweigerungen anzeigen:

```bash
sudo ausearch -m AVC -ts recent
```

SELinux sollte bei Zugriffsproblemen nicht
einfach deaktiviert werden.

Stattdessen müssen die Dateiberechtigungen,
Sicherheitskontexte und Richtlinien überprüft
werden.

## 9. Netzwerkverbindungen überprüfen

Lauschende TCP-Ports anzeigen:

```bash
sudo ss -tlnp
```

Gezielt Port 80 überprüfen:

```bash
sudo ss -tlnp 'sport = :80'
```

HTTP-Verbindung testen:

```bash
curl -I http://willkommen.local
```

## 10. Sicherheitsmaßnahmen

- Nur benötigte Netzwerkdienste freigeben
- SELinux aktiviert lassen
- Keine unnötigen Schreibrechte vergeben
- Dateiberechtigungen regelmäßig überprüfen
- Apache und Betriebssystem aktuell halten
- Logdateien regelmäßig kontrollieren
- HTTPS für produktive Webseiten verwenden

## 11. Fazit

Firewall, SELinux und Dateiberechtigungen
bilden unterschiedliche Sicherheitsebenen.

Eine korrekte Konfiguration ermöglicht
den Netzwerkzugriff auf den Webserver,
ohne unnötige Sicherheitsrisiken zu erzeugen.

