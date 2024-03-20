#!/bin/bash

set -e

FORGE_VERSION=$(grep 'FORGE_VERSION=' startserver.sh | cut -d '=' -f 2)

if ! [ -t "server.properties" ] || [ -z "$(cat server.properties)" ]; then
    cat template.server.properties > server.properties
fi

java @user_jvm_args.txt -Xmx${XMX} -Xms${XMS} "@libraries/net/minecraftforge/forge/1.20.1-$FORGE_VERSION/unix_args.txt" nogui