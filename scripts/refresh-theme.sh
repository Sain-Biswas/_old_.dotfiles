#!/bin/env bash

killall waybar
killall hyprpaper

pkill waybar
pkill hyprpaper

waybar &
hyprpaper &
