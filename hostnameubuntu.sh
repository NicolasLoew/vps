#!/bin/sh
{
sudo hostname VPS-Unlimited
cd /etc
rm hostname
wget https://raw.githubusercontent.com/NicolasLoew/vps/master/hostname
chmod 0644 hostname
/etc/init.d/hostname.sh start
} &> /dev/null
