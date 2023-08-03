#!/bin/bash

set -e

docker build -t muthu:1.1 .
docker login -u muthummkdh -p mmk07081999
docker tag muthu:1.1 muthummkdh/new
docker push muthummkdh/new
