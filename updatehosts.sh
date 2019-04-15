#!/bin/bash
#
brctl addbr br1
ip link set dev br1 up
ip addr add 192.168.40.1/24 dev br1

pipework br1 hadoop0 192.168.40.10/24
pipework br1 hadoop1 192.168.40.20/24
pipework br1 hadoop2 192.168.40.30/24
docker exec -ti hadoop0 mkdir -p /usr/local/hadoop/hdfs/{name,data} 
docker exec -ti hadoop0 /bin/bash -c "/mnt/hosts.sh"
docker exec -ti hadoop1 /bin/bash -c "/mnt/hosts.sh"
docker exec -ti hadoop2 /bin/bash -c "/mnt/hosts.sh"
docker exec -ti hadoop0 /bin/bash -c "/mnt/starthadoop.sh"
