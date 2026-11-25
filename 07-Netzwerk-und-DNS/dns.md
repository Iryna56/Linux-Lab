# DNS-Namensauflösung unter Linux

## Aufgabenstellung

Untersuchung der Namensauflösung mit
verschiedenen DNS-Werkzeugen.

## 1. DNS-Konfiguration anzeigen

    cat /etc/resolv.conf
    cat /etc/hosts
    cat /etc/nsswitch.conf

## 2. DNS-Werkzeuge installieren

    sudo yum install bind-utils -y

## 3. Namensauflösung mit Nslookup

    nslookup google.de

## 4. Namensauflösung mit Dig

    dig google.de

## Funktionsweise

    Domainname
         |
    DNS-Anfrage
         |
    DNS-Resolver
         |
    DNS-Antwort
         |
    IP-Adresse

## Wichtige DNS-Record-Typen

| Record | Bedeutung |
|---|---|
| A | IPv4-Adresse |
| AAAA | IPv6-Adresse |
| CNAME | Alias eines Domainnamens |
| MX | Mailserver |
| NS | Zuständiger Nameserver |
| PTR | Reverse-DNS-Auflösung |
| TXT | Textinformationen |

## Ergänzende Beispiele

    dig google.de A
    dig google.de AAAA
    dig google.de MX
    dig google.de NS

## Fehleranalyse

Bei der ursprünglichen Übung wurde zunächst
versucht, nslookup als einzelnes Paket
zu installieren.

Unter AlmaLinux stehen nslookup und dig
über das Paket bind-utils zur Verfügung.

## Erkenntnisse

DNS ermöglicht die Zuordnung von Domainnamen
zu IP-Adressen.

Dig stellt detaillierte DNS-Informationen
für die Fehleranalyse zur Verfügung.

## Dokumentationsstatus

Rekonstruktion meiner Befehlshistorie,
ergänzt durch theoretische DNS-Grundlagen
und Beispiele zu DNS-Record-Typen.
