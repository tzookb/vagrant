#!/usr/bin/env bash

echo " -------------------------  phantomjs  ------------------------- "
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2
tar jxf phantomjs-1.9.8-linux-x86_64.tar.bz2
mv phantomjs-1.9.7-linux-x86_64 phantomjs
sudo mv phantomjs/bin/phantomjs /usr/local/bin/phantomjs
rm -rf phantomjs