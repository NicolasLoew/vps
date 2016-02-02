#!/bin/bash
apt-get install tmux mailutils postfix curl lib32gcc1 libstdc++6 libstdc++6:i386 
adduser csgo
passwd csgo
su - csgoserver
wget http://gamesrvermanagers.com/dl/csgoserver
chmod +x csgoserver
./csgoserver install
