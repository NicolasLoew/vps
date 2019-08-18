#!/bin/bash
echo "This script will compile TFS and install a LAMP stack for Ubuntu 18.04 64bit LTS."
echo "This script needs to be executed as a user with sudo privileges.
cd 
echo "Updating the system.."
apt-get -y update
apt-get -y install sudo
echo "Installing LAMP Stack.."
sudo apt-get -y install apache2
sudo apt-get -y install mysql-server
sudo apt-get -y install php libapache2-mod-php php-mysql
echo "Installing required softwarefor TFS.."
sudo apt-get -y install luajit
sudo apt-get -y install git cmake build-essential liblua5.2-dev libgmp3-dev libmysqlclient-dev libboost-system-dev libboost-iostreams-dev libboost-filesystem-dev libpugixml-dev libcrypto++-dev
sudo apt-get -y update
echo "Downloading and compiling TFS..Please wait.."
sudo git clone --recursive https://github.com/otland/forgottenserver.git
cd forgottenserver
sudo mkdir build && cd build
sudo cmake ..
sudo make
sudo mv tfs ..
cd
cd ..
echo "Done. Make sure to adjust config before starting the server."
echo "To start the server use 'cd' to navigate to your home directory."
echo "You can launch it from there using './tfs'"
