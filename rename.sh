#/bin/bash

ls /data/Videos/tv | egrep 'Obfuscated|Chamele0n' | while read line
do
        mv /data/Videos/tv/$line/*.mkv /data/Videos/tv/$line/$line.mkv
        mv /data/Videos/tv/$line/*.mp4 /data/Videos/tv/$line/$line.mp4
        mv /data/Videos/tv/$line /data/Videos/tvtmp
done






