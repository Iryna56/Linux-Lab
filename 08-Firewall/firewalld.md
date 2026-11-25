# Firewalld unter AlmaLinux

## Aufgabenstellung

Aktivierung und Überprüfung der Firewall
in einer virtuellen Linux-Testumgebung.

## 1. Automatischen Start aktivieren

    sudo systemctl enable firewalld

## 2. Firewall starten

    sudo systemctl start firewalld

## 3. Dienststatus überprüfen

    sudo systemctl status firewalld

## 4. Firewall-Konfiguration anzeigen

    sudo firewall-cmd --list-all

## 5. Ergänzende Kontrollbefehle

    sudo firewall-cmd --state
    sudo firewall-cmd --get-active-zones
    sudo firewall-cmd --get-default-zone
    sudo firewall-cmd --list-services
    sudo firewall-cmd --list-ports

## Firewall-Zonen

| Zone | Beschreibung |
|---|---|
| public | Öffentliche Netzwerke |
| home | Vertrauenswürdige Heimnetzwerke |
| work | Arbeitsnetzwerke |
| internal | Interne Netzwerke |
| trusted | Alle Netzwerkverbindungen erlaubt |
| drop | Nicht zugeordnete eingehende Pakete verwerfen |
| block | Nicht erlaubte Verbindungen zurückweisen |

## Runtime und Permanent

Runtime-Konfigurationen gelten zur Laufzeit
und gehen beim Neuladen der Firewall verloren.

Permanent-Konfigurationen werden dauerhaft
gespeichert.

## Erkenntnisse

Firewalld ermöglicht eine flexible Verwaltung
von Netzwerkzugriffen mithilfe von Zonen,
Diensten und Portregeln.

Eine Firewall ist ein wichtiger Bestandteil
der IT-Sicherheit, ersetzt jedoch keine
weiteren Sicherheitsmaßnahmen.

## Sicherheitshinweis

Firewall-Regeln dürfen nicht ungeprüft
auf produktiven Systemen geändert werden.

Fehlerhafte Einstellungen können den
Netzwerkzugriff unterbrechen.

## Dokumentationsstatus

Rekonstruktion meiner praktischen Übung,
ergänzt durch theoretische Grundlagen
und zusätzliche Kontrollbefehle.

Die ursprünglichen Firewall-Regeln wurden
nicht vollständig gespeichert.
