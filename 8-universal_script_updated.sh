#!/bin/bash

echo "Please enter your name:"
read myname
echo "your name is $myname"


release_file=/etc/os-release 
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log


if  grep -q "Arch" $release_file  
then 
	sudo pacman -Syu 1>>$logfile 2>>$errorlog
	if [ $? -ne 0 ]
	then
		echo "an error occured, please check the $errorlog file"
	fi
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file 
then 
	sudo apt update -y 1>>$logfile 2>>$errorlog && sudo apt dist-upgrade -y 1>>$logfile 2>>$errorlog
	if [ $? -ne 0 ]
	then
		echo "An error occurred, please check the $errorlog file"
	fi
fi






