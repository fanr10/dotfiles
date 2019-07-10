#!/bin/bash

# small power menu using rofi, i3, systemd and pm-utils
# (last 3 dependencies are adjustable below)
# tostiheld, 2016

P="systemctl poweroff"
R="systemctl reboot"
L="i3lock"
E="exit"
S="systemctl suspend" 

# you can customise the rofi command all you want ...
rofi_command="rofi -config $HOME/.dotfiles/config/rofi/themes/Powermenu.rasi "

options=$'P\nR\nS\nL\nE\n􀚁'




# ... because the essential options (-dmenu and -p) are added here
eval "\$$(echo "$options" | $rofi_command -dmenu -p "")"
