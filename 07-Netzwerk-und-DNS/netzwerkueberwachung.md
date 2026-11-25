# Netzwerküberwachung unter Linux

## Aufgabenstellung

Analyse des Netzwerkverkehrs sowie
Überprüfung offener Ports und Verbindungen.

## 1. Werkzeuge installieren

    sudo yum install tcpdump -y
    sudo yum install net-tools -y

## 2. Netzwerkschnittstellen anzeigen

    ip link

## 3. Netzwerkverkehr analysieren

    sudo tcpdump -i eth0

Der Name eth0 muss gegebenenfalls an die
vorhandene Netzwerkschnittstelle angepasst werden.

## 4. Offene Ports anzeigen

    netstat -tulnp
    ss -tulnp

## Bedeutung der Parameter

| Parameter | Funktion |
|---|---|
| -t | TCP-Sockets |
| -u | UDP-Sockets |
| -l | Lauschende Sockets |
| -n | Numerische Adressen und Ports |
| -p | Zugehörige Prozesse, sofern sichtbar |

## Vergleich der Werkzeuge

| Werkzeug | Aufgabe |
|---|---|
| tcpdump | Netzwerkpakete erfassen |
| netstat | Netzwerkverbindungen und Ports anzeigen |
| ss | Moderne Socket- und Verbindungsanalyse |

## Erkenntnisse

TCPDump ermöglicht eine detaillierte Analyse
des Netzwerkverkehrs.

SS und Netstat unterstützen die Identifikation
von Netzwerkdiensten und offenen Ports.

## Datenschutz und Sicherheit

Netzwerkaufzeichnungen können vertrauliche
Informationen enthalten.

Die Analyse darf nur in eigenen oder
ausdrücklich autorisierten Netzwerken erfolgen.

Originale Paketaufzeichnungen werden nicht
auf GitHub veröffentlicht.

## Dokumentationsstatus

Rekonstruktion meiner praktischen Übungen
anhand der gespeicherten Befehlshistorie.
