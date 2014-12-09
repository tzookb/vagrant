#!/usr/bin/env bash

echo " -------------------------  add codeception globaly  ------------------------- "
wget http://codeception.com/codecept.phar .
sudo mv codecept.phar /usr/local/bin/codecept
sudo chmod 755 /usr/local/bin/codecept
