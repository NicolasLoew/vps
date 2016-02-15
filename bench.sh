#!/bin/bash
#written by akamaras.com

cname=$(cat /proc/cpuinfo|grep name|head -1|awk '{ $1=$2=$3=""; print }')
cores=$(cat /proc/cpuinfo|grep MHz|wc -l)
freq=$(cat /proc/cpuinfo|grep MHz|head -1|awk '{ print $4 }')
tram=$(free -m | awk 'NR==2'|awk '{ print $2 }')
swap=$(free -m | awk 'NR==4'| awk '{ print $2 }')
up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
cache=$((wget -O /dev/null http://cachefly.cachefly.net/100mb.test) 2>&1 | tail -2 | head -1 | awk '{print $3 $4 }')
io=$( (dd if=/dev/zero of=test_$$ bs=64k count=16k conv=fdatasync &&rm -f test_$$) 2>&1 | tail -1| awk '{ print $(NF-1) $NF }')
echo "CPU model : $cname"
echo "Number of cores : $cores"
echo "CPU frequency : $freq MHz"
echo "Total amount of ram : $tram MB"
echo "Total amount of swap : $swap MB"
echo "System uptime : $up"
echo "Download speed : $cache "
echo "I/O speed : $io"
