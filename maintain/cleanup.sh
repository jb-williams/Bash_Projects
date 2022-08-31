#!/bin/bash
# daily commonly

rm -rf /tmp/*
rm -rf /var/tmp/*

apt clean -y
# the "$USER" may not work may need to hardcode it
rm -rf /home/"USER"/.cache/thumbnails
rm -rf /root/.cache/thumbnails

