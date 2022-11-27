#!/bin/bash
# modified from https://github.com/bucciarati/linux-peap-wifi/blob/master/peap-wifi
ssid="$1"
if [ "x$ssid" = "x" ] ; then
  echo "Usage: $0 <ssid> <identity>"
	echo "e.g. $0 ASUS-WIFI"
	echo "e.g. $0 ASUS-WIFI nuggy"
  echo "'$ nmcli dev wifi' to scan wifi"
	exit 1
fi

identity="$2"
if [ -z "$identity" ] ; then
  default_user="${2:-$USER}"
  echo -n "Identity for $ssid [$default_user]: "
  read identity
  identity=${identity:-$default_user}
fi

if [ -n "$pass_command" ] ; then
  echo "pass_command=$pass_command"
  got_password=$( $pass_command )
  if [ $? -eq 0 ] ; then
    password="$got_password"
  else
    echo "pass_command failed!"
  fi
fi

if [ -z "$password" ] ; then
  echo -n "Password (will not be echoed): "
  read -s password
  echo
fi

# wpa_supplicant isn't as clever as I thought
# password="${password//\"/\\\"}"

tmpfile=$(mktemp)

cat >$tmpfile <<EOF
ctrl_interface=/run/wpa_supplicant
ctrl_interface_group=wheel
network={
	ssid="$ssid"
	key_mgmt=WPA-EAP
	eap=PEAP
	identity="$identity"
	password="$password"
	priority=1
	phase1="peaplabel=0"
  phase2="auth=MSCHAPV2"
}
EOF

wpa_supplicant -B -P /run/wpa_supplicant.wlp166s0.pid -i wlp166s0 -D nl80211,wext -c$tmpfile -W -C /run/wpa_supplicant
dhclient -v wlp166s0

rm -f $tmpfile
