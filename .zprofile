#!/bin/sh

# necessary for android-studio setup wizard
export EDITOR=vim
export _JAVA_AWT_WM_NONREPARENTING=1

# Opt-out of telemetry for .NET Core (Unreal Engine)
export DOTNET_CLI_TELEMETRY_OPTOUT=1

export LOCAL=$HOME/.local

export GOPATH=$LOCAL/src/go
export PATH=$PATH:$HOME/.cargo/bin:$HOME/.emacs.d/bin:$LOCAL/bin:$LOCAL/src/flutter/bin:$LOCAL/src/UnrealEngine/Engine/Binaries/Linux:$GOPATH/bin

[ "$(tty)" = "/dev/tty1" ] && exec startx
