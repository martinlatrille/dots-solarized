#!/bin/bash
if [ "$1" = "up" ]; then
	amixer set Master 5%+ -q
elif [ "$1" = "down" ]; then
	amixer set Master 5%- -q
fi;

volume=$(amixer get Master | grep "Left" | grep "\[on\]" | awk -F'[][]' '{print $2}')
dunstify "Volume: $volume" -a alsa -t 800 -u low 

