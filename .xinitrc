#!/bin/sh

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --output DP-4 --primary --mode 1920x1080 -r 144 --output DP-0 --mode 1920x1080 -r 144

hsetroot -fill ~/wall.jpg &
xset r rate 300 50 &
unclutter &
redshift -O 3000 &
setxkbmap -option caps:super && killall xcape 2>/dev/null; xcape -e 'Super_L=Escape' &
bar &
sxhkd &
exec dwm
