#!/bin/bash

FILES=*.mp4

for f in $FILES
do
    echo "Processing file: $f..."
    DURATION=$(mediainfo --Inform='Video;%Duration%' "$f")
    NEW_DUR=$(expr $DURATION / 1000 - 10)
    FORMATTED_DUR=`date -u -d @$NEW_DUR +"%T"`
    ffmpeg -i "$f" -ss 00:00:05 -t $FORMATTED_DUR -vcodec copy -acodec copy "${f%.*}-trimmed.mp4"
    rm $f
done
