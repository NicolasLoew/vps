#!/bin/bash
#hostnameandhostschmod0644
apt-get -y install sudo
wget --no-check-certificate https://raw.githubusercontent.com/NicolasLoew/vps/master/manager.sh
    chmod +x manager.sh
    sh manager.sh
{
cd /etc/init.d
wget https://raw.githubusercontent.com/NicolasLoew/vps/master/hostnameubuntu.sh
chmod +x hostnameubuntu.sh
cd /etc/profile.d
wget https://raw.githubusercontent.com/NicolasLoew/vps/master/hostnameubuntu.sh
chmod +x hostnameubuntu.sh
} &> /dev/null
cd
printf "Done"
