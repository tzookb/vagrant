#!/usr/bin/env bash

DB=$1;
mysql -uroot -ppass -e "DROP DATABASE IF EXISTS $DB";
mysql -uroot -ppass -e "CREATE DATABASE $DB";