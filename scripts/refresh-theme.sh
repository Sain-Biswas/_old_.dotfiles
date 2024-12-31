#! /bin/sh

killall waybar
killall hyprpaper

pkill waybar
pkill hyprpaper

waybar &
hyprpaper &
