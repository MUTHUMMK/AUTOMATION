#!/bin/bash

set -e

sudo apt-get update

sudo apt-get install docker.io

sudo systemctl start docker

sudo docker login -u muthummkdh -p mmk07081999

sudo docker run -itd --name myapp -p "9090:80" new:1.1

echo "deploy success"
