#!/usr/bin/env bash

# Application port
if [ $# -gt 0 ]
then
	while [ $# -ne 0 ]
  	do
  	    echo "*********-$PORT-***********"
    	lsof -i tcp:$1
    	shift
	done
else
	declare -a PORTS=$(netstat -anv | grep LISTEN | awk '{print $4}' | rev | cut -d. -f1 | rev)
    for PORT in ${PORTS[@]}
    do
        echo "*********-$PORT-***********"
        lsof -i tcp:"$PORT"
    done
fi
