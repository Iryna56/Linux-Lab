# Apache-Webserver unter AlmaLinux

## Überblick

Dieses Kapitel dokumentiert praktische Übungen zur
Installation, Konfiguration und Verwaltung eines
Apache-Webservers unter AlmaLinux.

Die Übungen wurden in einer virtuellen
Linux-Umgebung durchgeführt.

## Lernziele

- Installation des Apache-Webservers (httpd)
- Verwaltung des Apache-Dienstes mit systemctl
- Erstellung eigener Webseiten mit HTML
- Konfiguration virtueller Hosts
- Einrichtung lokaler Domainnamen
- Konfiguration von Firewall und SELinux
- Analyse von Logdateien
- Fehleranalyse und Fehlerbehebung

## Inhaltsverzeichnis

| Thema | Dokumentation |
|---|---|
| Installation | [Apache installieren](installation.md) |
| Virtual Hosts | [Virtuelle Hosts](virtual-hosts.md) |
| Website | [Website erstellen](website-configuration.md) |
| Sicherheit | [Firewall und SELinux](firewall-und-selinux.md) |
| Fehlerbehebung | [Troubleshooting](troubleshooting.md) |

## Praktische Umgebung

- Betriebssystem: AlmaLinux
- Webserver: Apache HTTP Server
- Dienst: httpd
- Protokoll: HTTP
- Standardport: 80/TCP
- Testdomain: willkommen.local

## Wichtige Verzeichnisse

| Pfad | Beschreibung |
|---|---|
| /etc/httpd/ | Apache-Konfiguration |
| /etc/httpd/conf/httpd.conf | Hauptkonfigurationsdatei |
| /etc/httpd/conf.d/ | Zusätzliche Konfigurationen |
| /var/www/ | Webinhalte |
| /var/log/httpd/ | Apache-Logdateien |

## Verwendete Werkzeuge

- Apache HTTP Server
- systemctl
- firewall-cmd
- SELinux
- Vim
- Bash
- Git und GitHub

## Fazit

Dieses Kapitel dient der praktischen Vertiefung
von Linux-Systemadministration, Webserver-Konfiguration
und systematischer Fehlerbehebung.
