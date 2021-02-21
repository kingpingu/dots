#!/bin/sh

# necessary for android-studio setup wizard
export _JAVA_AWT_WM_NONREPARENTING=1

export LOCAL=$HOME/.local

export PATH=$PATH:$HOME/.cargo/bin:$LOCAL/bin:$LOCAL/src/flutter/bin

[ "$(tty)" = "/dev/tty1" ] && exec startx
