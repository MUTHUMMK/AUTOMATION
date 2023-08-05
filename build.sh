#!/bin/bash
set -e

export user = "${Dockehub_user}"
export pwd = "${Dockerhub_pwd}"

docker build -t muthu:1.1 .
docker login -u "$user" -p "$pwd"
docker tag muthu:1.1 muthummkdh/new3
docker push muthummkdh/new3
