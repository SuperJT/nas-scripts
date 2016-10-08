#!/bin/bash
################################
##Script Created by Jason Townsend
##10/8/2016
##Script designed to replace fucked up year string in music folder
##replace [2016']  with [2016]

# Create list of all directories to rename.
find /data/music -type d | grep -G \[[0-9][0-9][0-9][0-9]\'\]$ > files.tmp
while read -r line || [[ -n "$line" ]]
	do
		#echo $line | awk '{print $NF}'
		sourcefile="\"$line\""
		newline="\"$(echo $line | sed "s/'//")\""
		command="mv $sourcefile $newline"
		eval $command
	done < files.tmp

