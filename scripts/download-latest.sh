#!/bin/bash

APP_ID="715572"

latest_id=$(curl -Ls "https://www.curseforge.com/api/v1/mods/$APP_ID/files?pageIndex=0&pageSize=1&sort=dateCreated&sortDescending=true&removeAlphas=true" \
    | jq '.data[0].id')
    
server_id=$(curl -Ls "https://www.curseforge.com/api/v1/mods/$APP_ID/files/$latest_id/additional-files" \
    | jq '.data[0].id')

curl -Lo "$1" "https://www.curseforge.com/api/v1/mods/$APP_ID/files/$server_id/download"
