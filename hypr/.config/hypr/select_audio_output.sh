#! /bin/bash

# pactl set-default-sink "$(pactl list sinks | grep Description | cut -c 14- | rofi -dmenu)"
pactl set-default-sink "$(pactl list sinks short |
  awk -F '\t' '{print $2, $5}' |
  rofi -dmenu -window-title "Audio output" -location 3 -no-fixed-num-lines -lines 5 -theme-str 'entry {enabled: false;} window {width: 30%; y-offset: 30;} listview {fixed-height: true; dynamic: true;}' |
  awk -F ' ' '{print $1}')"
