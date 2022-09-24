# BSPWM Install

Window Manager: [bspwm](https://github.com/baskerville/bspwm)  
Bindings: [sxhkd](https://github.com/baskerville/sxhkd)  
Status Bar: [Polybar](https://github.com/polybar/polybar)

## Install required programs

Install [Nordic KDE](https://store.kde.org/p/1327093) change it in system settings.  
`$ sudo dnf install bspwm polybar sxhkd rofi fontawesome5-fonts-all qt5ct feh picom`  
Paste in config `$ mkdir -p /home/$USER/.config/bspwm`  
Paste in config `$ mkdir -p /home/$USER/.config/sxhkd`  
Paste in config `$ mkdir -p /home/$USER/.config/polybar`  
Paste in config `$ mkdir -p /home/$USER/.config/picom`  
Make launch executable `$ chmod +x $HOME/.config/polybar/launch.sh`  
Paste rofi configs  
Make executables

1. `$ chmod +x $HOME/.config/rofi/powermenu/powermenu.sh`
2. `$ chmod +x $HOME/.config/rofi/launcher/launcher.sh`

Check [wiki](https://github.com/polybar/polybar/wiki), update battery, wifi and more  
Double check monitor is correct in ploybar config.ini. `xrandr` and match monitors  
Reboot computer

Set wallpaper put wallapaper in pictures.

Use rofi and script. check discord for more information.
