#!/bin/bash

if [ $# -eq 1 ] && [[ "$1" =~ ^(base|default)$ ]]
then
    echo $1 'image build'
    ./docker/$1_img_build.sh
else
    echo 'default image build'
    ./docker/default_img_build.sh
fi
