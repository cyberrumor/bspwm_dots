#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# numlock
numlockx on

# set wallpaper with feh
feh --bg-scale $HOME/Pictures/HoursOfTranquility.jpg

# start conky
# conky &

# start xautolock
xautolock -time 30 -locker /usr/local/bin/lock &

# simple x hotkey daemon
sxhkd &

# set mouse pointer
xsetroot -cursor_name left_ptr &

# start dunst
dunst >/dev/null 2>&1 &

# picom
# picom --experimental-backends &

# floating desktop
# create_floating_window_desktop.sh &

# start bspwm
exec bspwm
