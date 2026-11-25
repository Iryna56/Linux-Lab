# Netzwerkkonfiguration mit NetworkManager

## Aufgabenstellung

Verwaltung der Netzwerkkonfiguration
unter AlmaLinux.

## 1. IP-Adressen anzeigen

    ip -br addr
    hostname -I

## 2. Netzwerkschnittstellen überprüfen

    ip link

## 3. Routing-Tabelle anzeigen

    ip route

## 4. Hostname überprüfen

    hostnamectl
    cat /etc/hostname

## 5. Hostname ändern

    sudo hostnamectl set-hostname linux-lab

Der Hostname linux-lab ist ein anonymisiertes
Beispiel aus meiner Lernumgebung.

## 6. Lokale Namensauflösung überprüfen

    cat /etc/hosts
    cat /etc/nsswitch.conf

## 7. NetworkManager verwenden

    nmcli
    nmtui

NMCLI ermöglicht die Netzwerkverwaltung
über die Kommandozeile.

NMTUI bietet eine textbasierte Oberfläche
zur Netzwerkkonfiguration.

## 8. Konfigurationsdateien untersuchen

    sudo cat /etc/NetworkManager/NetworkManager.conf

    sudo ls -l /etc/NetworkManager/system-connections/

## Wichtige Konfigurationsdateien

| Datei | Funktion |
|---|---|
| /etc/hostname | Hostname des Systems |
| /etc/hosts | Lokale Namensauflösung |
| /etc/resolv.conf | DNS-Konfiguration |
| /etc/nsswitch.conf | Reihenfolge der Namensauflösung |
| NetworkManager.conf | NetworkManager-Konfiguration |

## Erkenntnisse

NetworkManager ermöglicht eine zentrale
Verwaltung von Netzwerkverbindungen.

IP-Adressen, Routing und Namensauflösung
sind wichtige Grundlagen der Netzwerkdiagnose.

## Sicherheitshinweis

Originale Netzwerkprofile werden nicht
veröffentlicht, da diese vertrauliche
Informationen enthalten können.
