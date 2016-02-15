#!/bin/bash
cd 
apt-get update
apt-get install luajit
apt-get install sudo
sudo apt-get install git cmake build-essential liblua5.2-dev libgmp3-dev libmysqlclient-dev libboost-system-dev libpugixml-dev
apt-get update
apt-get upgrade
git clone https://github.com/otland/forgottenserver.git
cd forgottenserver
mkdir build && cd build
 read -r -p "If you dont want to use latest TFS sources but instead use your own sources to compile please exchange them with those in the build folder before you continue. Continue? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
  cd build
  cmake ..
  make
  mv tfs ..
   fi
