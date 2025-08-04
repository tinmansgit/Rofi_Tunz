#!/usr/bin/env bash

# change to your Music directory path
MDIR="/path/to/music/"

cd $MDIR && find -name *.mp3 | sort | sed "s|^$MDIR||" | rofi -yoffset 0 -theme-str 'window {width: 800;}' -dmenu -i -l 1 -p "Play" | xargs -I {} mpv --no-video $MDIR{} 
