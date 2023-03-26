#!/bin/bash

# This script lets me update the scripts, mods etc from a central location
# in case I lose the server config or move the server. I need to create
# a config folder config and put cluster.ini and cluster_token.txt in it
# so I don't lose the server setup. Of course I would not upload that to a public repository.

configFiles=("config/cluster.ini" "config/cluster_token.txt")

failed=false

if [ -z "$1" ]
  then
    echo "Please supply a release version as a parameter e.g. ./update-setup.sh v1.0.0"
    failed=true
fi

for file in ${configFiles[@]}; do
  if [ ! -f $file ]; then
    echo "Config file $file does not exist. Please create it."
    failed=true
  fi
done

if [ "$failed" = true ]
  then
    echo "Exiting"
    exit 1
fi

wget https://github.com/Limeyuzu/dont-starve-together-server-config/releases/download/$1/MyDediServer.tgz
tar -xvzf MyDediServer.tgz && rm MyDediServer.tgz

for file in ${configFiles[@]}; do
  cp $file .klei/DoNotStarveTogether/MyDediServer
done
