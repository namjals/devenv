#!/bin/bash

if [ "$1" = "start" ]
then
    echo 'tljh-default image start'
    docker run \
    -itd \
    --rm \
    --privileged \
    --name=tljh --publish 12000:80 \
    --mount type=bind,source=$(pwd),target=/srv/src tljh-default
elif [ "$1" = "stop" ]
then
    echo 'tljh-default image stop'
    docker stop tljh
else
    echo "You must write 1 parameter."
    echo "./app.sh (start|stop)"
    exit 0;
fi
