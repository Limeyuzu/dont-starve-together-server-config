#!/bin/bash

configFiles=("config/cluster.ini" "config/cluster_token.txt")

failed=false

for file in ${configFiles[@]}; do
  if [ ! -f $file ]; then
    echo "Config file $file does not exist. Please create it."
    failed=true
  fi
done

if [ -z "$1" ] then
  echo "Please supply a release version e.g. v1.0.0"
  failed=true
fi

if [ $failed ] then
  exit 1
fi

wget https://github.com/Limeyuzu/dont-starve-together-server-config/releases/download/$1/MyDediServer.tgz
tar -xvzf MyDediServer.tgz && rm MyDediServer.tgz

for file in ${configFiles[@]}; do
  cp $file .klei/DoNotStarveTogether/MyDediServer
done