#/bin/bash

ls /data/music | while read line
do
        echo $line | awk '{print tolower($0)}'
done






