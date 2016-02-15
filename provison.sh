#!/bin/bash
#hostnameandhostschmod0644
{
cd /etc/init.d
wget https://raw.githubusercontent.com/NicolasLoew/vps/master/hostnameubuntu.sh
chmod +x hostnameubuntu.sh
cd /etc/profile.d
wget https://raw.githubusercontent.com/NicolasLoew/vps/master/hostnameubuntu.sh
chmod +x hostnameubuntu.sh
cd /etc
sed 's/^server-provider/vps-unlimited/' hosts > hosts
} &> /dev/null
