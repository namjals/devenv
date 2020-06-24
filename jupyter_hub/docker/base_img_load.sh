#!/bin/bash
basePath=$(dirname $0)/..
cd $basePath
basePath=$(pwd)

docker load -i $basePath/images/tljh-base.tar.gz
