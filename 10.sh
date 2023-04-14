#!/bin/bash 
finished=0
        
while [ $finished -ne 1 ]
do 	
	echo "What is your favorite linux Distro ?"
	 
	echo "1 - Arch "
	echo "2 - CentOS"
	echo "3 - Debian"
	echo "8 - Exit the script"
	echo "enter your option please" 
	read distro;

	case $distro in 
		1) echo "Arch is a rolling release";;
		2) echo "CentOS is popular on servers";;
		3) echo "Debian is a community distribution";;
		8) finished=1;;
		*) echo "Not a valid option"
		
	esac
done

echo "thanks"
