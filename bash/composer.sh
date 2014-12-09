#!/usr/bin/env bash

echo "this must have php cli installed!!!"

echo " -------------------------  Composer is the future. But you knew that, did you master? Nice job.  ------------------------- "
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer