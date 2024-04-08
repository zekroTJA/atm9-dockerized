FROM ghcr.io/zekrotja/minebase:zulu-21

COPY scripts/ scripts/
COPY template.server.properties .

RUN bash ./scripts/download-latest.sh atm-server.zip \
    && unzip atm-server.zip \
    && rm atm-server.zip \
    && mv Server-Files-*/* .

RUN mv ./config ./config.tmp

RUN chmod +x ./startserver.sh

RUN chmod +x scripts/*.sh

RUN echo "eula=true" > eula.txt

ENV XMX="4G" \
    XMS="2G" \
    BACKUP_LOCATION="/var/mcserver/world/"