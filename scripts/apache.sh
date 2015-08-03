#!/usr/bin/env bash

block="
<VirtualHost *:80>
	ServerAdmin webmaster@localhost
	ServerName  $1
	ServerAlias *.loyaltypointstore.dev
	DocumentRoot $2
	<Directory />
		Options FollowSymLinks
		AllowOverride All
	</Directory>
	<Directory $2>
		Options Indexes FollowSymLinks MultiViews
		AllowOverride All
		Require all granted
	</Directory>

	ScriptAlias /cgi-bin/ /usr/lib/cgi-bin/
	<Directory "/usr/lib/cgi-bin">
		AllowOverride None
		Options +ExecCGI -MultiViews +SymLinksIfOwnerMatch
		Require all granted
	</Directory>

	ErrorLog /var/log/apache2/$1/error.log

	# Possible values include: debug, info, notice, warn, error, crit,
	# alert, emerg.
	LogLevel warn

	CustomLog /var/log/apache2/$1/access.log combined


</VirtualHost>
"

echo "$block" > "/etc/apache2/sites-available/$1.conf"
sudo a2ensite "$1.conf"

sudo mkdir /var/log/apache2/$1
sudo service apache2 reload
