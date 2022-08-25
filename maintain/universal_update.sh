#!/bin/bash

cd /etc

# test if local host is arch based
if [ -d /etc/pacman.d ]
then
    ## run arch update
    sudo pacman -Syu
fi

## test debian based
if [ -d /etc/apt ]
then
    ## run apt update
    sudo apt update -y && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt-get autoremove --purge -y && sudo apt clean -y
fi
