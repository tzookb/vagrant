#!/usr/bin/env bash

echo " -------------------------  Good morning, master. Let's get to work. Installing now.  ------------------------- "
echo " -------------------------  Updating packages list  ------------------------- "
sudo apt-get update

sudo apt-get -y install python-software-properties

echo " -------------------------  Basic packages  ------------------------- "
sudo apt-get install -y vim curl git wget