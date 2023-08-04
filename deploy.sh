#!/bin/bash
export pwd="$1"
ssh -o StrictHostKeyChecking=no -i "$pwd" ubuntu@13.215.59.213 <<EOF
apt-get update
ls
apt-get install docker.io

systemctl start docker

docker login -u muthummkdh -p mmk07081999

docker run -itd --name myapp -p "9090:80" muthummkdh/new

if curl localhost:9090
then
  echo "deploy successed"
fi

echo "deploy success"
EOF
