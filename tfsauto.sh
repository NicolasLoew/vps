#!/bin/bash
cd 
apt-get -y update
apt-get -y install sudo
sudo apt-get -y install luajit
sudo apt-get -y install git cmake build-essential liblua5.2-dev libgmp3-dev libmysqlclient-dev libboost-system-dev libboost-iostreams-dev libboost-filesystem-dev libpugixml-dev libcrypto++-dev
sudo apt-get -y update
sudo git clone --recursive https://github.com/otland/forgottenserver.git
cd forgottenserver
mkdir build && cd build
 read -r -p "If you dont want to use latest TFS sources but instead use your own sources to compile please exchange them with those in the build folder before you continue. Continue? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
  cmake ..
  make
  mv tfs ..
   fi
cd
cd tfs
echo "Done. Make sure to adjust settings in config before starting the server."
echo "To start the server use 'cd' to navigate to your home directory then start it using './tfs'"
