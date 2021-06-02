# Docker Nextcloud MariaDB

[![Docker Logo](images/1920px-Docker_(container_engine)_logo.svg.png "Docker Logo")](https://en.wikipedia.org/wiki/Docker_(software)#/media/File:Docker_(container_engine)_logo.svg)

## Dokumentation für die bewertete Hausübung 2

Gruppe 6: Clemens Horn, Niklas Schimmack, Julian Freundt

## Voraussetzungen

Unix-artiges Betriebssystem auf dem Docker installiert ist.

Auf Windows sollte Docker Desktop installiert sein sowie ein Unix-Terminal-Emulator wie z.B. Git Bash.

## Benutzung

Um dieses Projekt zu benutzen, muss das Projekt geklont werden und das Start Skript ausgeführt werden. Auf Unix müssen vorher noch die Shellskripte Ausführungsrechte erhalten.

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

## Quellen

1. <https://hub.docker.com/_/mariadb>
2. <https://hub.docker.com/_/nextcloud>
3. <https://docs.docker.com/get-started07_multi_container/>
4. <https://docs.docker.com/get-started/05_persisting_data/>
5. <https://docs.docker.com/engine/reference/commandline/build/>
6. <https://docs.docker.com/engine/reference/commandline/run/>
7. <https://en.wikipedia.org/wiki/Docker_(software)#/media/File:Docker_(container_engine)_logo.svg>
