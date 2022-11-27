#!/usr/bin/env bash

#	FontysVpn 1.0
#	Connect to Fontys VPN
#	Dependencies: openconnect, i3-msg
#
#	By Joris van Dijk | gitlab.com/jorisvandijk 
#	Licensed under the GNU General Public License v3.0	

on="sudo openconnect vpn.oregonstate.edu --user=linpoh --passwd-on-stdin"
off="sudo pkill openconnect"
file=$HOME/.config/ciscovpn

if [ -f "$file" ]; then

    if [[ $1 == "c" ]] || [[ $1 == "connect" ]]; then
   		bspc node -d '10' --follow && notify-send "VPN connected" && \
   		echo "$(<$file )" | $on
	elif [[ $1 == "d" ]] || [[ $1 == "disconnect" ]]; then 
        $off && notify-send "VPN disconnected"
    elif [[ $1 == "s" ]] || [[ $1 == "status" ]]; then
        pid=$(pidof openconnect)
    	    if [[ $pid ]]; then
    			notify-send "VPN connected"
    	    else
    			notify-send "VPN disconnected"
    	    fi       
    else
    	notify-send "Wrong flag"
    fi
else 
	touch $FILE
    notify-send "Please add your VPN password to $file"
fi
