#!/bin/bash

var=$(echo 'Logout|Power Off|Reboot' | rofi -sep '|' -dmenu -p 'Search' -theme-str 'window {width:30%;height:25%;}')
echo $var

if [[ $var = "Logout" ]] 
then
    wayland-logout
elif [[ $var = "Power Off" ]]
then
    systemctl poweroff
elif [[ $var = "Reboot" ]]
then
    systemctl reboot
else 
    exit
fi

