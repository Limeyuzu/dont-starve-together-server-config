# Quick Linux config package for DST server

## How to use

1. Go to [releases](https://github.com/Limeyuzu/dont-starve-together-server-config/releases) and find the latest tag and download `MyDediServer.tgz` from your server from the home directory `~`. Extract the contents.
    * e.g. for v1.0.0:
        ```
        cd ~

        wget https://github.com/Limeyuzu/dont-starve-together-server-config/releases/download/v1.0.0/MyDediServer.tgz

        tar -xvzf MyDediServer.tgz && rm MyDediServer.tgz
        ```

2. Run `install-steam.sh` if steam is not installed (sudo required). There should be a `Steam` directory under home `~`

3. Navigate to `.klei/DoNotStarveTogether/MyDediServer/config` and update cluster.ini and cluster_token.txt
    * cluster_token.txt: just paste the cluster token into this file. You can get it from https://accounts.klei.com/account/game/servers?game=DontStarveTogether

    * cluster.ini: This is the config seen from the game client when trying to connect. replace all the placeholder `example_` fields.

4. Run `start_server.sh`
    * To keep the server running after logging off ssh, instead run `screen -A -m -d -S dst-server ./start-servers.sh &`

## Mods

Some mods require them to be added to both the server and client. 
Mods can be added to the server by following these steps: 
* Edit `.klei/DoNotStarveTogether/MyDediServer/Master/modoverrides.lua`. An example file has been provided, just add in the workshop ID.
* Copy the changes `.klei/DoNotStarveTogether/MyDediServer/Caves/modoverrides.lua` as well.
* Edit `mods/dedicated_server_mods_setup.lua` to include the same workshop IDs as well. An example file has been provided. 
