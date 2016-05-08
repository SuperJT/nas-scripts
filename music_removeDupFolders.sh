#!/bin/bash
~/scripts/music_listlower.sh |sort | uniq -c | sort -rn | awk '$1>1' | cut -d ' ' -f7 --complement | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' > ~/tmp

cat ~/tmp | while read line
do
	var=$line
	var="${var~}"
        if [ -d "/data/music/$var" ]; then
		if [ -d "/data/music/$line" ]; then
			mv "/data/music/$var"/* "/data/music/$line/"
			rmdir "/data/music/$var"
		fi
	fi
done

