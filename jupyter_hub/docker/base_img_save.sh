#!/bin/bash
basePath=$(dirname $0)/..
cd $basePath
basePath=$(pwd)

mkdir $basePath/images

docker save -o $basePath/images/tljh-base.tar.gz tljh-base:latest
