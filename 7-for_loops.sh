#!/bin/bash

for file in ~/logfiles/*.log 
do 
	tar -czvf $file.tar.gz $file
done 

echo "task has been completed"
