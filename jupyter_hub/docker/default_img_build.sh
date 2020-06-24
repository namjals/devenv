#!/bin/bash
basePath=$(dirname $0)/..
cd $basePath
basePath=$(pwd)

docker build -t tljh-default . -f Dockerfile 
