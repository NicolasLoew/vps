#!/bin/bash

TEAMSPEAK=`ps ax | grep ts3server_linux_amd64 | grep -v grep | wc -l`

if [ $TEAMSPEAK -eq 1 ]
then
exit
else
/etc/ts3/./ts3server_startscript.sh start
fi

#type chmod +x tscc.sh
#type crontab -e
#navigate to the bottom of the file
#type */2 * * * * /home/ts3/teamspeak3-server_linux-amd64/./tscc.sh (change the path to your needs. You may change the time, also)
#exit with CTRL-X
#You are done! The script will check every two minutes, whether your ts-server is running, if not.. it will restart it.


