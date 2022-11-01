#!/usr/bin/env bash

if [ -d /etc/pacman.d ]
# test if local host is arch based
then
    ## run arch update
    sudo pacman -Syu
elif [ -d /etc/apt ]
## test debian based
then
    ## run apt update
    sudo apt update -y && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt-get autoremove --purge -y && sudo apt clean -y
fi
