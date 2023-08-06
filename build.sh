#!/bin/bash
set -e

docker build -t muthu:1.2 .

docker login -u $DOCKER_HUB_USR1 -p $DOCKER_HUB_PSW1

docker tag muthu:1.2 muthummkdh/new3
docker push muthummkdh/new3
