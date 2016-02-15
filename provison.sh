#!/bin/bash
{
cd /etc/init.d
wget https://raw.githubusercontent.com/NicolasLoew/vps/master/hostnameubuntu.sh
chmod +x hostnameubuntu.sh
cd /etc/profile.d
wget https://raw.githubusercontent.com/NicolasLoew/vps/master/hostnameubuntu.sh
chmod +x hostnameubuntu.sh
cd /etc
sed 's/^server-provider/vps-unlimited/' hosts.txt > file2.txt
} &> /dev/null
