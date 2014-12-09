#!/usr/bin/env bash


echo " -------------------------  Installing and configuring Xdebug  ------------------------- "
sudo apt-get install -y php5-xdebug

cat << EOF | sudo tee -a /etc/php5/mods-available/xdebug.ini
xdebug.scream=1
xdebug.cli_color=1
xdebug.show_local_vars=1
EOF

echo "now we need to restart the server"
echo " -------------------------  Restarting Nginx  ------------------------- "
echo "sudo service nginx restart"