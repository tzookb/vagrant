#!/usr/bin/env bash

echo " -------------------------  Good morning, master. Let's get to work. Installing now.  ------------------------- "
echo " -------------------------  Updating packages list  ------------------------- "
sudo apt-get update

sudo apt-get -y install python-software-properties

echo " -------------------------  Adding php5 repo  ------------------------- "
sudo add-apt-repository -y ppa:ondrej/php5

echo " -------------------------  Updating packages list  ------------------------- "
sudo apt-get update

echo " -------------------------  MySQL time  ------------------------- "
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password 1234'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 1234'

echo " -------------------------  Basic packages  ------------------------- "
sudo apt-get install -y vim curl git wget

echo " -------------------------  Installing PHP-specific packages  ------------------------- "
sudo apt-get install -y nginx-common nginx

sudo apt-get install -y php5-fpm php5-cli php5-curl php5-gd php5-mcrypt mysql-server-5.5 php5-mysql

echo " -------------------------  Installing and configuring Xdebug  ------------------------- "
sudo apt-get install -y php5-xdebug

cat << EOF | sudo tee -a /etc/php5/mods-available/xdebug.ini
xdebug.scream=1
xdebug.cli_color=1
xdebug.show_local_vars=1
EOF

echo " -------------------------  Restarting Nginx  ------------------------- "
sudo service nginx restart

echo " -------------------------  Composer is the future. But you knew that, did you master? Nice job.  ------------------------- "
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

echo " -------------------------  add codeception globaly  ------------------------- "
wget http://codeception.com/codecept.phar .
sudo mv codecept.phar /usr/local/bin/codecept
sudo chmod 755 /usr/local/bin/codecept

echo " -------------------------  install npm  ------------------------- "
sudo apt-get -y install npm

echo " -------------------------  phantomjs  ------------------------- "
#wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2
#tar jxf phantomjs-1.9.7-linux-x86_64.tar.bz2
#mv phantomjs-1.9.7-linux-x86_64 phantomjs
#sudo mv phantomjs/bin/phantomjs /usr/local/bin/phantomjs


echo " -------------------------  All set to go! Would you like to play a game?  ------------------------- "


