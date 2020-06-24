#!/bin/bash
basePath=$(dirname $0)
cd $basePath

git clone https://github.com/jupyterhub/the-littlest-jupyterhub.git
cd the-littlest-jupyterhub
docker build -t tljh-base . -f integration-tests/Dockerfile 
docker run --rm --privileged --detach --name=tljh-base --publish 12000:80 --mount type=bind,source=$(pwd),target=/srv/src tljh-base
docker exec tljh-base python3 /srv/src/bootstrap/bootstrap.py --admin admin 
docker commit tljh-base tljh-base
docker stop tljh-base
rm -rf the-littlest-jupyterhub
