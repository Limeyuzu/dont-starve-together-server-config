#!/bin/bash

if [ -z "$1" ]
  then
    echo "Please supply a release version e.g. v1.0.0"
fi

wget https://github.com/Limeyuzu/dont-starve-together-server-config/releases/download/$1/MyDediServer.zip
unzip MyDediServer.zip && rm MyDediServer.zip