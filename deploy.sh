#!/bin/bash
export pwd="$1"

scp -o StrictHostKeyChecking=no -i "$pwd" docker-compose.yml ubuntu@13.213.65.61:/home/ubuntu
ssh -o StrictHostKeyChecking=no -i "$pwd" ubuntu@13.213.65.61 <<EOF
sudo apt-get update -y
ls

sudo apt-get install docker.io -y
sudo  apt-get install docker-compose -y

sudo systemctl start docker


sudo docker-compose up -d

if curl localhost:80
then
  echo "deploy successed"
fi

echo "deploy success"
EOF
