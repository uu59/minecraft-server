#!/usr/bin/env bash

set -ue

cd /minecraft/data
/usr/bin/java $@ -d64 -jar /minecraft/minecraft_server.1.8.7.jar nogui
