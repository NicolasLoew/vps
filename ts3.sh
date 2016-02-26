#!/bin/bash
apt-get -y update
wget http://dl.4players.de/ts/releases/3.0.11.2/teamspeak3-server_linux-amd64-3.0.11.2.tar.gz
sudo adduser --disabled-login teamspeak
#sudo mv teamspeak3-server_linux-amd64 /usr/local/teamspeak
#sudo chown -R teamspeak:teamspeak /usr/local/teamspeak
#sudo ln -s /usr/local/teamspeak/ts3server_startscript.sh /etc/init.d/teamspeak
#sudo update-rc.d teamspeak defaults
#sudo service teamspeak start

#Firewall Rules
#If you are using iptables, then you will need to enable a few ports.

#-A INPUT -p udp --dport 9987 -j ACCEPT
#-A INPUT -p udp --sport 9987 -j ACCEPT
#-A INPUT -p tcp --dport 30033 -j ACCEPT
#-A INPUT -p tcp --sport 30033 -j ACCEPT
#-A INPUT -p tcp --dport 10011 -j ACCEPT
#-A INPUT -p tcp --sport 10011 -j ACCEPT
# or sudo apt-get remove --purge iptables
