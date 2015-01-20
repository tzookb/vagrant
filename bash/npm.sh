#!/usr/bin/env bash

echo " -------------------------  install npm  ------------------------- "
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get -y install nodejs
sudo apt-get -y install build-essential