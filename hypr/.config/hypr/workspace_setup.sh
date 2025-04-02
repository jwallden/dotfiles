#!/bin/env bash

HOST=$(hostname)

if [[ $HOST == "jonkin" ]]; then
  hyprctl keyword workspace 1, monitor:HDMI-A-1, default:true, persistent:true
  hyprctl keyword workspace 2, monitor:HDMI-A-1, persistent:true
  hyprctl keyword workspace 3, monitor:HDMI-A-1, persistent:true
  hyprctl keyword workspace 10, monitor:HDMI-A-2, default:true, persistent:true
  sleep 0.5
  hyprctl dispatch moveworkspacetomonitor 1 HDMI-A-1
  hyprctl dispatch moveworkspacetomonitor 2 HDMI-A-1
  hyprctl dispatch moveworkspacetomonitor 3 HDMI-A-1
  hyprctl dispatch moveworkspacetomonitor 10 HDMI-A-2

  # hyprctl dispatch -- exec [workspace 10 silent] kitty --session tall-session &&
  #   hyprctl dispatch workspace 1
  # hyprctl keyword source ~/.config/hypr/workspaces_jonkin.conf

fi

if [[ $host == "pulse" ]]; then
  hyprctl keyword workspace 1, monitor:eDP-1, default:true, persistent:true
  hyprctl keyword workspace 2, monitor:eDP-1, persistent:true
  hyprctl keyword workspace 3, monitor:eDP-1, persistent:true
fi
