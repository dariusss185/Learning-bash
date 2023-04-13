#!/bin/bash

mynum=300

if [ $mynum -gt 200 ] 
then 
	echo "condition is true" 
else
	echo "the variable is equal to 200 "
fi

if [ -f 4.sh ]
then 
	echo "the file exists"
else
	echo "the file does not exist"
fi 
