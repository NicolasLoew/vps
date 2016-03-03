#!/bin/bash
cd 
apt-get update
apt-get -y install sudo
sudo apt-get -y install luajit
sudo apt-get -y install git cmake build-essential liblua5.2-dev libgmp3-dev libmysqlclient-dev libboost-system-dev libpugixml-dev
sudo apt-get -y update
sudo git clone https://github.com/otland/forgottenserver.git
cd forgottenserver
mkdir build && cd build
 read -r -p "If you dont want to use latest TFS sources but instead use your own sources to compile please exchange them with those in the build folder before you continue. Continue? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
  cmake ..
  make
  mv tfs ..
   fi
 read -r -p "UNDER CONSTRUCTION! SELECT NO! Did you get errors while compiling? If yes, do you want to download pre-compiled TFS 1.2 for Ubuntu 15.04? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
  cd 
  mkdir ots
  cd ots
  wget 
  unzip forgottenserver
   fi
