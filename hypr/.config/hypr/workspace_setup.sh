#!/bin/bash

HOST=$(hostname)

if [[ $HOST == "jonkin" ]]; then
  hyprctl keyword workspace 1,monitor:HDMI-A-1,default:true
  hyprctl keyword workspace 2,monitor:HDMI-A-1
  hyprctl keyword workspace 3,monitor:HDMI-A-1
  hyprctl keyword workspace 4,monitor:HDMI-A-1
  hyprctl keyword workspace 5,monitor:HDMI-A-1
  hyprctl keyword workspace 6,monitor:HDMI-A-2,default:true
  hyprctl dispatch moveworkspacetomonitor 1 HDMI-A-1
  hyprctl dispatch moveworkspacetomonitor 2 HDMI-A-1
  hyprctl dispatch moveworkspacetomonitor 3 HDMI-A-1
  hyprctl dispatch moveworkspacetomonitor 4 HDMI-A-1
  hyprctl dispatch moveworkspacetomonitor 5 HDMI-A-1
  hyprctl dispatch moveworkspacetomonitor 6 HDMI-A-2

  hyprctl keyword bind SUPER,§,workspace,6
fi

if [[ $HOST == "pulse" ]]; then
  echo $HOST
fi
