#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Wait till the processes are done
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar laptop &

if [[ $(xrandr -q | grep 'DP-1 connected') ]]; then
  polybar mid &
  polybar side &
fi
