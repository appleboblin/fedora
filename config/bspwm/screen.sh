#!/bin/bash

if [[ $(xrandr | grep -e 'disconnected' | wc -l) = "2" ]]
then
  xrandr --output eDP-1 --primary --mode 2256x1504 --pos 2650x342 --rotate normal --output DP-1 --mode 1600x900 --pos 1050x173 --rotate normal --output DP-2 --off --output DP-4 --off --output DP-3 --mode 1680x1050 --pos 0x0 --rotate left
  bspc monitor DP-3 -d 1 2 3 
  bspc monitor DP-1 -d 4 5 6 7
  bspc monitor eDP-1 -d 8 9 10
elif [[ $(xrandr | grep -e 'disconnected' | wc -l) = "3" ]]
then
  xrandr --output eDP-1 --primary --mode 2256x1504 --pos 1050x0 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-3 --mode 1680x1050 --pos 0x0 --rotate left --output DP-4 --off
  bspc monitor eDP-1 -d 6 7 8 9 10
  bspc monitor DP-3 -d 1 2 3 4 5
else
  xrandr --output eDP-1 --primary --mode 2256x1504 --pos 0x0 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off
  bspc monitor eDP-1 -d 1 2 3 4 5 6 7 8 9 10
fi
