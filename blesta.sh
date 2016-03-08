#!/bin/bash
apt-get -y update
apt-get -y install apache2
sudo apt-get install mysql-server
sudo apt-get install php5 libapache2-mod-php5
sudo /etc/init.d/apache2 restart
php -r 'echo "\n\nYour PHP installation is working fine.\n\n\n";'
sudo apt-get install php5-curl
apt-get -y update
sudo apt-get install openssl
apt-get -y install php5-mcrypt
php5enmod mcrypt
apt-get install php5-imap
php5enmod imap
cd /tmp
wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
tar xfz ioncube_loaders_lin_x86-64.tar.gz
cp /tmp/ioncube/ioncube_loader_lin_5.6.so /usr/lib/php5/20131226/

