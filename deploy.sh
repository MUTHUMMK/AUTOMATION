#!/bin/bash

set -e

apt-get update

apt-get install docker.io

systemctl start docker

docker login -u muthummkdh -p mmk07081999

docker run -itd --name myapp -p "9090:80" new:1.1

echo "deploy success"
