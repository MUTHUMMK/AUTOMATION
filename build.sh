#!/bin/bash
set -e

docker build -t muthu:1.2 .

docker login -u DOCKER_HUB_USR -p DOCKER_HUB_PSW

docker tag muthu:1.2 muthummkdh/new2
docker push muthummkdh/new2
