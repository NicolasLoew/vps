#!/bin/bash
apt-get update
apt-get install luajit
apt-get install sudo
sudo apt-get install git cmake build-essential liblua5.2-dev libgmp3-dev libmysqlclient-dev libboost-system-dev
apt-get upgrade
git clone https://github.com/otland/forgottenserver.git
cd forgottenserver
mkdir build && cd build
cmake ..
make
mv tfs ..
