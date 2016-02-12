#!/bin/sh
apt-get update -y
apt-get install sudo -y
sudo hostname VPS-Unlimited
cd /etc/init.d/
wget userlogin.sh
chmod +x userlogin.sh
./userlogin.sh
