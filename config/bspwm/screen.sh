#!/bin/bash

if [[ $(xrandr | grep -e 'disconnected' | wc -l) = "2" ]]
then
  bspc monitor DP-3 -d 1 2 3 
  bspc monitor DP-1 -d 4 5 6 7
  bspc monitor eDP-1 -d 8 9 10
elif [[ $(xrandr | grep -e 'disconnected' | wc -l) = "3" ]]
then
  bspc monitor eDP-1 -d 6 7 8 9 10
  bspc monitor DP-3 -d 1 2 3 4 5
else
  bspc monitor eDP-1 -d 1 2 3 4 5 6 7 8 9 10
fi
