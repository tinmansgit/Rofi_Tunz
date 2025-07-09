#!/usr/bin/env bash

cd /media/coder/AV/Music && find -name *.mp3 | sort | sed "s|^/media/coder/AV/Music/||" | rofi -yoffset 0 -theme-str 'window {width: 800;}' -dmenu -i -l 1 -p "Play" | xargs -I {} mpv --no-video /media/coder/AV/Music/{} 
