#!/bin/sh

eval $(ssh-agent)

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --output DP-4 --primary --mode 1920x1080 -r 144 --output DP-0 --mode 1920x1080 -r 144

hsetroot -fill ~/Pictures/wall.jpg &
xset r rate 300 50 &
unclutter &
redshift -O 3500 &
bar &
sxhkd &
exec dwm
