#!/bin/bash

myvar=1

while [ -f ~/testfile ]
do 
	echo "as of $(date) the test file exists"
	sleep 5
done
echo "the file no longer exists"

while [ $myvar -ne 10 ]
do 
	echo $myvar
	myvar=$(( $myvar +1))
done
