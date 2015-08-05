#!/usr/bin/env bash

echo " -------------------------  Good morning, master. Let's get to work. Installing now.  ------------------------- "
echo " -------------------------  Updating packages list  ------------------------- "

#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

#this is latest
#echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb.list

#this is for 2.6
#echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

sudo apt-get update

#sudo apt-get install mongodb-org -y

sudo apt-get install php5-dev make php-pear -y

printf "\n" | sudo pecl install mongo

sudo echo "extension=mongo.so" | sudo tee /etc/php5/mods-available/mongo.ini

sudo php5enmod mongo