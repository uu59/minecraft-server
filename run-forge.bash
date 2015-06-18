#!/usr/bin/env bash

set -ue

cd /minecraft
/usr/bin/java $@ -d64 -jar forge-1.7.10-10.13.4.1448-1.7.10-universal.jar
