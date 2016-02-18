#!/bin/bash
#hostnameandhostschmod0644
apt-get -y install sudo
read -r -p "Do you want to install Server-Manager? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
cd
mkdir manager
cd manager
    wget --no-check-certificate https://raw.githubusercontent.com/NicolasLoew/vps/master/manager.sh
    chmod +x manager.sh
    sudo ./manager.sh
cd
fi
{
cd /etc/init.d
wget https://raw.githubusercontent.com/NicolasLoew/vps/master/hostnameubuntu.sh
chmod +x hostnameubuntu.sh
cd /etc/profile.d
wget https://raw.githubusercontent.com/NicolasLoew/vps/master/hostnameubuntu.sh
chmod +x hostnameubuntu.sh
} &> /dev/null

