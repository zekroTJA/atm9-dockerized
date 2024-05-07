#!/bin/bash

set -e

if [ -f patch/mods/pipez-forge-1.20.1-1.2.6.jar ]; then
    mv patch/mods/pipez-forge-1.20.1-1.2.6.jar mods/pipez-*
fi