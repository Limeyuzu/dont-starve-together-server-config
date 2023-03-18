#!/bin/bash

# https://developer.valvesoftware.com/wiki/SteamCMD

sudo add-apt-repository multiverse
sudo apt install software-properties-common
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install lib32gcc-s1 steamcmd 