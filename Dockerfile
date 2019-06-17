FROM        openjdk:8u111-jdk
LABEL       maintainer "Masud Afsar"

RUN         useradd minecraft -m -s /bin/bash

COPY        . /home/minecraft/mc/

WORKDIR     /home/minecraft/mc

RUN         chown -R minecraft:minecraft /home/minecraft

EXPOSE      25565 8123

USER        minecraft

ENTRYPOINT  ["/home/minecraft/mc/run.sh"]
