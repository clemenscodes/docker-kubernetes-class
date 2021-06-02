# Docker Nextcloud MariaDB

[![Docker Logo](images/1920px-Docker_(container_engine)_logo.svg.png "Docker Logo")](https://en.wikipedia.org/wiki/Docker_(software)#/media/File:Docker_(container_engine)_logo.svg)

## Dokumentation für die bewertete Hausübung 2

Gruppe 6: Clemens Horn, Niklas Schimmack, Julian Freundt

## Voraussetzungen

Unix-artiges Betriebssystem auf dem Docker installiert ist sowie ggf. Administrationsrechte.

Auf Windows sollte Docker Desktop sowie ein Unix-Terminal-Emulator wie z.B. Git Bash installiert sein.

Die Ports 80, 443 und 3306 müssen frei sein.

## Benutzung

Um dieses Projekt zu benutzen, muss das Projekt geklont und das Start Skript ausgeführt werden. Auf Unix müssen die Shellskripte Ausführungsrechte erhalten. Auf Windows sollten die Befehle zum Ausführen des Projekts per Git Bash erfolgen.

Alternativ können die Dockerfiles auch manuell verwendet werden.

### Windows

```bash

git clone https://github.com/clemenshorn/docker-gcc.git

cd docker-gcc

scripts/start.sh

```

### Unix

```bash

git clone https://github.com/clemenshorn/docker-gcc.git

cd docker-gcc

chmod -R +x scripts/ 

scripts/start.sh

```

## Erläuterung

Es war gefordert eine Nextcloud in einem Dockercontainer unter den Ports 80 und 443 bereitzustellen und eine Datenbank anzuschließen. Bei der Datenbank fiel die Wahl auf MariaDB/MySQL.

Damit Nextcloud an eine Datenbank angeschlossen werden kann, muss diese vorher existieren, daher wird zunächst die Datenbank mittels Dockerfile definiert.

```Dockerfile
FROM mariadb

VOLUME /var/lib/docker/volumes/db

EXPOSE 3306
```

`FROM` bestimmt, dass das offizielle MariaDB-Image als Grundlage für den Datenbankcontainer dienen soll und `VOLUME` bestimmt `db` als Ordner für die Persistierung von Daten als Volumen in dem Standardverzeichnis, in dem Docker auf Unixsystemen Volumen speichert. Die Anwendung wird mittels `EXPOSE` auf dem Port 3306 innerhalb des Containers bereitgestellt.  

Um aus diesem Dockerfile ein Image herzustellen, das in einem Dockercontainer ausgeführt werden kann, muss der `docker build` Befehl verwendet werden.

```bash
docker build -t mariadb:gcc -f docker/mariadb.Dockerfile  .
```

Der `-t` Schalter bewirkt, dass das Image ein Tag bzw. Namen erhält, auf den man sich später beziehen kann und der `-f` Schalter bestimmt welcher Dockerfile verwendet werden soll. Der `.` am Ende des Befehls sagt aus von welchem Verzeichnis ausgehend Docker nach den Dockerfiles suchen soll. In diesem Projekt wird stets davon ausgegangen, dass die Befehle von der Wurzel des Projekts ausgeführt werden.


## Quellen

1. <https://hub.docker.com/_/mariadb>
2. <https://hub.docker.com/_/nextcloud>
3. <https://docs.docker.com/get-started07_multi_container/>
4. <https://docs.docker.com/get-started/05_persisting_data/>
5. <https://docs.docker.com/engine/reference/commandline/build/>
6. <https://docs.docker.com/engine/reference/commandline/run/>
7. <https://en.wikipedia.org/wiki/Docker_(software)#/media/File:Docker_(container_engine)_logo.svg>
