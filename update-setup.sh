#!/bin/bash

configFiles=("config/cluster.ini" "config/cluster_token.txt")

for file in ${configFiles[@]}; do
  if [ ! -f $file ]; then
    echo "Config file $file does not exist. Please create it."
    exit 1
  fi
done

if [ -z "$1" ] then
  echo "Please supply a release version e.g. v1.0.0"
  exit 1
fi

wget https://github.com/Limeyuzu/dont-starve-together-server-config/releases/download/$1/MyDediServer.zip
unzip -o MyDediServer.zip && rm MyDediServer.zip

for file in ${configFiles[@]}; do
  cp $file .klei/DoNotStarveTogether/MyDediServer
done