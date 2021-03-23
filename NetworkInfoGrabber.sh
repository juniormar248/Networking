#!/bin/bash #This line chooses the interpreter 
#Samuel Martinez #This line is commented out 
#NetworkInfoGrabber #This line is commmented out

U=$USER # This lines saves the enviromental variable of the users name as varieble $U

DIR="/home/$U/NetworkInfo" # This line saves the directory location as variable $DIR

if [ ! -d "$DIR" ] # This line starts an if statement and if the directory given isnt a directory it runs the folling command
then # this starts the next command
        mkdir NetworkInfo 2>/dev/null # This creates a new directory and cancels out the error message when it tries to creat one but it already exist      
fi # this ends the if statement

DATE=$(date +%d-%m-%Y:%T) # this saves the out put of the date command with specific information into the variable $DATE

FN="$DIR/NetwokrInfo_"DATE".txt" # This saves the directory location and the name of the new file while using the $DIR variable and $DATE variable to create a unique file name 

touch $FN # This creates a new file using the $FN variable

#-------------------------------------------- # this line is commented out 

echo ---------------------------------------- >> $FN # This line prints to the $FN text file 
echo ifconfig >> $FN # This line prints to the $FN text file 
echo ---------------------------------------- >> $FN # This line prints to the $FN text file 

ifconfig >> $FN # this liner rus the ifconfig command and sends the output to $FN

echo ---------------------------------------- >> $FN # This line prints to the $FN text file 
echo netstat >> $FN # This line prints to the $FN text file 
echo ---------------------------------------- >> $FN # This line prints to the $FN text file 

netstat >> $FN # this liner rus the netstat command and sends the output to $FN

echo ---------------------------------------- >> $FN # This line prints to the $FN text file 
echo ip >> $FN # This line prints to the $FN text file 
echo ---------------------------------------- >> $FN # This line prints to the $FN text file

ip addr >> $FN # this liner rus the ip command and sends the output to $FN

echo ---------------------------------------- >> $FN # This line prints to the $FN text file 
echo ping >> $FN # This line prints to the $FN text file 
echo ---------------------------------------- >> $FN # This line prints to the $FN text file 

ping 8.8.8.8 -c 10 >>  $FN # this liner rus the ping command and sends the output to $FN


