#!/bin/bash

set -e

if [ -z "$(ls -A ./config 2> /dev/null)" ]; then
    echo "----- Initializing config directory -----"
    if [ -f "config.tmp" ]; then
        mv ./config.tmp ./config
    else
        mv ./config.tmp/* ./config/
    fi
else
    echo "----- Config already initialized -----"
fi

ATM9_INSTALL_ONLY=true ./startserver.sh