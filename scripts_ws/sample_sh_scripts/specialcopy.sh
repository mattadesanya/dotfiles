#!/bin/bash
specialfolder=$1
mkdir $specialfolder
for i in $(ls); do
	if [ "$i" = "shell_scripts" ]; then
    for files in $(ls shell_scripts); do
      echo $files
		  cp shell_scripts/$files $specialfolder
    done
	fi
done
