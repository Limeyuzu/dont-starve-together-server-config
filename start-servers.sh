#!/bin/bash

cd ~
steamcmd +login anonymous +app_update 343050 validate +quit
cd "Steam/steamapps/common/Don't Starve Together Dedicated Server/bin64"
./dontstarve_dedicated_server_nullrenderer_x64 -console -cluster MyDediServer -shard Master
./dontstarve_dedicated_server_nullrenderer_x64 -console -cluster MyDediServer -shard Caves