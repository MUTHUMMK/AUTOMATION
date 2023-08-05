#!/bin/bash
export pwd="$1"
ssh -o StrictHostKeyChecking=no -i "$pwd" ubuntu@13.213.65.61 <<EOF
sudo apt-get update -y
ls
sudo apt-get install docker.io -y

sudo systemctl start docker

if curl localhost:80
then
  echo "deploy successed"
fi

echo "deploy success"
EOF
