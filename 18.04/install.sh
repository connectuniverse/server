#!/usr/bin/env bash
sudo apt update

sudo apt-get install zip unzip git
sudo apt-get install -y software-properties-common python-software-properties

sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.4-fpm php7.4-mbstring php7.4-xml php7.4-zip php7.4-mysql php7.4-curl

sudo apt-get install -y nginx
sudo apt install -y mysql-server mysql-client
mysql_secure_installation

sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer