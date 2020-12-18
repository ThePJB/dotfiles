#!/bin/sh
feh --bg-fill /home/pat/wallpapers/clouds.jpg &
#xrandr --output DP-0 --mode 2560x1440 --left-of DVI-D-0 --output DVI-D-0 --rotate left &
mouse &
#xinput --set-prop 13 'libinput Accel Profile Enabled' 0 1 & # disable mouse accel 
xset r rate 300 50 &
setxkbmap -option caps:escape &

while true; do
    xsetroot -name "$(/home/pat/repo/scripts/bar-laptop)" 
    sleep 1s
done &

xrdb ~/.Xresources
dwm
