#!/usr/bin/env bash

set -ue

cd /minecraft
/usr/bin/java $@ -d64 -jar ./minecraft_server.1.8.7.jar nogui
