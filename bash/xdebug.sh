#!/usr/bin/env bash


echo " -------------------------  Installing and configuring Xdebug  ------------------------- "
sudo apt-get install -y php5-xdebug

cat << EOF | sudo tee -a /etc/php5/mods-available/xdebug.ini
zend_extension=xdebug.so
xdebug.remote_enable=1
xdebug.remote_host=localhost
xdebug.remote_port=9000
xdebug.remote_handler=dbgp
xdebug.scream=1
xdebug.cli_color=1
xdebug.show_local_vars=1
xdebug.default_enable=1
xdebug.idekey="vagrant"
xdebug.profiler_enable=1
xdebug.remote_autostart=1
xdebug.remote_connect_back=1
EOF

echo " -------------------------  YOU NEED TO RESTART SERVER  ------------------------- "