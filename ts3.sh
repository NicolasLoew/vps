#!/bin/bash
wget http://dl.4players.de/ts/releases/3.0.12.2/teamspeak3-server_linux_amd64-3.0.12.2.tar.bz2
tar -xzvf teamspeak3-server_linux_amd64-3.0.12.2.tar.bz2 
cd teamspeak3-server_linux-amd64/ 
./ts3server_startscript.sh start
