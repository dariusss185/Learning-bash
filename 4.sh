#!/bin/bash

package=notexist
directory=/etc
sudo apt install $package >> package_install_results.log

if [ $? -eq 0 ]
then 
	echo "the package install was succesful"
	echo "the new command is available here:"
	which $package
else
	echo "$package failed to install" >> package_install_failure.log
fi

echo "hello world" 
echo "$?"
if [ -d $directory ]
then 
	echo "the directroy $directory exists."
	exit 0
else 
	echo "the directroy $directory dosent exist"
	exit 1 
fi

echo " the exit code for this script run is : $?"
