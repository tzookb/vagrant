#!/usr/bin/env bash

echo " -------------------------  Adding php5 repo  ------------------------- "
sudo add-apt-repository -y ppa:ondrej/php5

echo " -------------------------  Updating packages list  ------------------------- "
sudo apt-get update

echo " -------------------------  Installing nginx packages  ------------------------- "
sudo apt-get install -y nginx-common nginx

echo " -------------------------  Installing PHP-specific packages  ------------------------- "
sudo apt-get install -y php5 php5-fpm php5-cli php5-curl php5-gd php5-mcrypt