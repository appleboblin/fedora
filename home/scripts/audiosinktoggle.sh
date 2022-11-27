#!/bin/bash

if [[ $(pactl get-default-sink) == "alsa_output.pci-0000_00_1f.3.analog-stereo" ]]
then
  pactl set-default-sink alsa_output.usb-Schiit_Audio_Schiit_Modi_3E-00.iec958-stereo
else
  pactl set-default-sink alsa_output.pci-0000_00_1f.3.analog-stereo
fi
