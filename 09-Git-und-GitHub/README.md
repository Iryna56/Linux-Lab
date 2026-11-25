# Versionsverwaltung mit Git und GitHub

## Aufgabenstellung

Einrichtung einer Git-Umgebung unter AlmaLinux
und Verbindung einer virtuellen Maschine
mit GitHub über SSH.

## Lernziele

- Git unter Linux verwenden
- SSH-Authentifizierung konfigurieren
- Remote-Repositories verwalten
- Repositories lokal klonen
- Änderungen überprüfen
- Dateien versionieren
- Technische Dokumentation mit Markdown erstellen

## 1. Git installieren

    sudo dnf install git -y

## 2. Installation überprüfen

    git --version

## 3. Git-Benutzer konfigurieren

    git config --global user.name "Benutzername"
    git config --global user.email "E-Mail-Adresse"

## 4. SSH-Schlüssel erstellen

    ssh-keygen -t ed25519

## 5. Öffentlichen SSH-Schlüssel anzeigen

    cat ~/.ssh/id_ed25519.pub

Der öffentliche Schlüssel wird im GitHub-Konto
unter SSH and GPG keys hinterlegt.

Der private Schlüssel darf niemals
weitergegeben oder veröffentlicht werden.

## 6. SSH-Verbindung überprüfen

    ssh -T git@github.com

Die erfolgreiche Authentifizierung wurde
in meiner virtuellen Lernumgebung bestätigt.

## 7. Repository klonen

    git clone git@github.com:Iryna56/Linux-Lab.git

## 8. Arbeitsverzeichnis öffnen

    cd Linux-Lab

## 9. Repository überprüfen

    git status
    git remote -v

## 10. Git-Workflow

Vorgesehener Ablauf für die Veröffentlichung:

    git add DATEINAME
    git commit -m "Add documentation"
    git push

## Wichtige Git-Befehle

| Befehl | Funktion |
|---|---|
| git clone | Repository klonen |
| git status | Arbeitszustand überprüfen |
| git add | Änderungen zum Commit vormerken |
| git commit | Änderungen lokal speichern |
| git push | Commits zum Remote-Repository übertragen |
| git pull | Änderungen abrufen und integrieren |
| git log | Commit-Historie anzeigen |
| git diff | Änderungen vergleichen |
| git remote -v | Remote-Repositories anzeigen |

## Gitignore

Die Datei .gitignore unterstützt den Ausschluss
nicht benötigter oder vertraulicher Dateien.

Dazu gehören beispielsweise:

- Logdateien
- Backup-Archive
- Private Schlüssel
- Temporäre Dateien
- Befehlshistorien

## Erkenntnisse

Git ermöglicht eine nachvollziehbare
Versionsverwaltung von Quellcode und
technischer Dokumentation.

GitHub ermöglicht die zentrale Speicherung
und Präsentation von Projekten.

Durch SSH kann ich direkt aus meiner
virtuellen Linux-Umgebung mit GitHub arbeiten.

## Dokumentationsstatus

Die SSH-Verbindung und das Klonen des
Repositories wurden erfolgreich überprüft.

Die Veröffentlichung der Dokumentation
ist der nächste Projektschritt.
