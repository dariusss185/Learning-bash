#!/bin/bash

mynum=300

if [ $mynum -gt 200 ] 
then 
	echo "condition is true" 
else
	echo "the variable is equal to 200 "
fi

if [ -d hello ]
then 
	echo "the file exists"
else
	echo "the file does not exist"
fi 

command=htop

if command -v $comand 
then 
	echo "$command is available, lets run it"
else
	echo "$command is not available"
	sudo apt install -y htop
fi 

$command
