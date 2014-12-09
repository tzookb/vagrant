#!/usr/bin/env bash

echo " -------------------------  Installing nginx packages  ------------------------- "
sudo apt-get install -y nginx-common nginx

echo " -------------------------  Installing PHP-specific packages  ------------------------- "
sudo apt-get install -y php5-fpm php5-cli php5-curl php5-gd php5-mcrypt