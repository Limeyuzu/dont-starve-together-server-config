#!/bin/bash

installLocation="Steam/steamapps/common/Don't Starve Together Dedicated Server"

cd ~

steamcmd +login anonymous +app_update 343050 validate +quit

if [ -f $file ]; then
    # Move mods install script 
    cp mods/dedicated_server_mods_setup.lua "${installLocation}/mods"
fi

cd "${installLocation}/bin64"
./dontstarve_dedicated_server_nullrenderer_x64 -console -cluster MyDediServer -shard Master
./dontstarve_dedicated_server_nullrenderer_x64 -console -cluster MyDediServer -shard Caves
