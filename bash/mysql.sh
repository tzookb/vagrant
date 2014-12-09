#!/usr/bin/env bash

echo " -------------------------  MySQL time  ------------------------- "
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

sudo apt-get install -y mysql-server-5.5 php5-mysql
