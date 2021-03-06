#!/bin/bash
echo "This script will compile TFS and install a LAMP stack for Ubuntu 18.04 64bit LTS."
echo "This script needs to be executed as a user with sudo privileges."
cd
echo "Updating the system"
apt-get -y update
apt-get -y install sudo
echo "Installing LAMP Stack"
sudo apt-get -y install apache2
sudo apt-get -y install mysql-server
sudo mysql -e "CREATE USER 'otsuser'@'localhost' IDENTIFIED BY 'password';"
sudo mysql -e "CREATE DATABASE otsdb;"
sudo mysql -e "GRANT ALL PRIVILEGES ON otsdb.* TO 'otsuser'@'localhost';"
sudo apt-get -y install php libapache2-mod-php php-mysql
sudo service apache2 start
echo "Installing required software"
sudo apt-get -y install luajit
sudo apt-get -y install libboost-date-time-dev
sudo apt-get -y install git cmake build-essential libluajit-5.1-dev libmysqlclient-dev libboost-system-dev libboost-iostreams-dev libboost-filesystem-dev libpugixml-dev libcrypto++-dev
sudo apt-get -y update
echo "Downloading and compiling TFS..Please wait"
sudo git clone --recursive https://github.com/otland/forgottenserver.git
cd forgottenserver
sudo mkdir build && cd build
sudo cmake ..
sudo make
sudo mv tfs ..
cd ..
sudo mysql -u otsuser -p otsdb < schema.sql
cd
cd forgottenserver
echo "Done! Make sure to adjust configlua before starting the server."
echo "The following dummy user has been created at MySQL localhost"
echo "MySQL username: otsuser pw: password db: otsdb  Warning: TESTING PURPOSES ONLY"
echo "You can launch the server from /home/username/forgottenserver using ./tfs"
