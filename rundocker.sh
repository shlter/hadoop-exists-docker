#!/bin/bash
#
docker run --name hadoop0 --hostname hadoop0 -d -P -p 50070:50070 -p 8088:8088 shlter/hadoop
docker run --name hadoop1 --hostname hadoop1 -d -P shlter/hadoop
docker run --name hadoop2 --hostname hadoop2 -d -P shlter/hadoop
