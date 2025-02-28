#!/bin/env bash

killall polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload --config=~/.dotfiles/.config/polybar/config.ini &
  done
else
  polybar --reload --config=~/.dotfiles/.config/polybar/config.ini &
fi
