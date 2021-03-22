#!/bin/bash
#Samuel Martinez
#NetworkInfoGrabber

U=$USER

DIR="/home/$U/NetworkInfo"

if [ ! -d "$DIR" ]
then
        mkdir NetworkInfo 2>/dev/null
fi

DATE=$(date +%d-%m-%Y:%T)

FN="$DIR/NetwokrInfo_"DATE".txt"

touch $FN

#--------------------------------------------

echo ---------------------------------------- >> $FN
echo ifconfig >> $FN
echo ---------------------------------------- >> $FN

ifconfig >> $FN

echo ---------------------------------------- >> $FN
echo netstat >> $FN
echo ---------------------------------------- >> $FN

netstat >> $FN

echo ---------------------------------------- >> $FN
echo ip >> $FN
echo ---------------------------------------- >> $FN

ip addr >> $FN






