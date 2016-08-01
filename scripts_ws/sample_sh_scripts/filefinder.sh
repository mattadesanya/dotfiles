#!/bin/bash
newfolder=$1
location=$2
fileneeded=$3
mkdir $newfolder
for file in $(ls $location); do
	if [ $file = $fileneeded ]; then
		cp $location/$fileneeded $newfolder
	fi
done  
