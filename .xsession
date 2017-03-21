#!/bin/sh
numlockx on
xrdb -merge $HOME/.Xresources
setxkbmap -option ctrl:swapcaps
ibus-daemon --xim -d

source $HOME/.environment

exec stumpwm
