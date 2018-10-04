#!/usr/bin/env bash

# Put the name or id or command of docker to filter
CONTAINER_FILTER=$1

# Get container id from filter
CONTAINER_ID=$(docker ps |grep $CONTAINER_FILTER|tr -s ' '|cut -d' ' -f 1 )

# Execute to go into docker
if echo $CONTAINER_ID | egrep -q '^[0-9a-z]+$'; then
    docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $CONTAINER_ID
else
    echo "Can not get IP to $CONTAINER_ID"
fi
