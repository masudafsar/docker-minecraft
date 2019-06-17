FROM        openjdk:8u111-jdk
LABEL       maintainer "Masud Afsar"

RUN         useradd minecraft -m -s /bin/bash

COPY        run.sh                              /home/minecraft/mc/
COPY        server/spigot-1.14.2.jar            /home/minecraft/mc/server/
COPY        server/eula.txt                     /home/minecraft/mc/server/
COPY        server/server.properties            /home/minecraft/mc/server/
COPY        server/plugins/                     /home/minecraft/mc/server/plugins/

WORKDIR     /home/minecraft/mc

RUN         chown -R minecraft:minecraft /home/minecraft

EXPOSE      25565

USER        minecraft

ENTRYPOINT  ["/home/minecraft/mc/run.sh"]
