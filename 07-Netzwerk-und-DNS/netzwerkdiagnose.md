# Netzwerkdiagnose unter Linux

## Aufgabenstellung

Überprüfung der Netzwerkverbindung und
Analyse von Netzwerkproblemen.

## 1. IP-Konfiguration überprüfen

    ip -br addr
    ip link
    ip route

## 2. Erreichbarkeit überprüfen

    ping google.de

## 3. Anzahl der Pakete begrenzen

    ping -c 4 google.de

## 4. Traceroute installieren

    sudo yum install traceroute -y

## 5. Netzwerkpfad untersuchen

    traceroute google.de
    tracepath google.de

## Vergleich der Diagnosewerkzeuge

| Befehl | Funktion |
|---|---|
| ip addr | IP-Adressen anzeigen |
| ip link | Netzwerkschnittstellen anzeigen |
| ip route | Routing-Tabelle anzeigen |
| ping | Erreichbarkeit überprüfen |
| traceroute | Netzwerkpfad untersuchen |
| tracepath | Netzwerkpfad und Path-MTU untersuchen |

## Systematische Fehleranalyse

1. Zustand der Netzwerkschnittstelle prüfen.
2. IP-Adresse kontrollieren.
3. Routing-Tabelle überprüfen.
4. Erreichbarkeit des Gateways testen.
5. Externe IP-Adresse testen.
6. DNS-Namensauflösung überprüfen.
7. Netzwerkpfad analysieren.

Diese Reihenfolge ist eine ergänzende
Checkliste zur strukturierten Fehlersuche.

## Erkenntnisse

Netzwerkprobleme können unterschiedliche
Ursachen haben.

Eine strukturierte Vorgehensweise hilft,
Fehler auf Netzwerk- und DNS-Ebene
voneinander zu unterscheiden.

## Dokumentationsstatus

Rekonstruktion meiner praktischen Übungen.
Konkrete Messwerte wurden nicht gespeichert.
