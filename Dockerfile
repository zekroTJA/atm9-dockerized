FROM ghcr.io/zekrotja/minebase

ARG SERVER_DOWNLOAD_URL="https://mediafilez.forgecdn.net/files/5189/561/Server-Files-0.2.53.zip"

RUN curl -Lo atm-server.zip "${SERVER_DOWNLOAD_URL}" \
    && unzip atm-server.zip \
    && rm atm-server.zip \
    && mv Server-Files-*/* .

RUN chmod +x ./startserver.sh

COPY scripts/ scripts/
COPY template.server.properties .

RUN chmod +x scripts/*.sh

RUN echo "eula=true" > eula.txt

ENV XMX="4G" \
    XMS="2G" \
    BACKUP_LOCATION="/var/mcserver/world/"