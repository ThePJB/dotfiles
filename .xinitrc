#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

#does this do anything lol
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi


feh --bg-fill /home/pat/Pictures/Cienega_Dgo.jpg &
#xrandr --output DP-0 --mode 2560x1440 --left-of DVI-D-0 --output DVI-D-0 --rotate left &
xinput --set-prop 9 'libinput Accel Profile Enabled' 0 1 & # disable mouse accel 
xset r rate 300 50 &

while true; do
    if [ -f ~/.task ]; then
        task_str="$(cat ~/.task) |"
    else
        task_str=""
    fi

    eval $(sp eval)

    if [ $? -eq 0 ]; then
        spotify_str="$SPOTIFY_ARTIST - $SPOTIFY_TITLE |"
    fi

    xsetroot -name "$task_str $spotify_str $( date +"%F %R" )"
    sleep 1s
done &

xrdb ~/.Xresources

export STARTUP=dwm-loop
. /etc/X11/Xsession

