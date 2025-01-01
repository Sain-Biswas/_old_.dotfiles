#!/usr/bin/env bash

# Setup Pywalfox
pywalfox install

# Select Wallpaper for proper colour scheme
~/.dotfiles/scripts/wall-selector.sh

# Set constant pnpm store path
pnpm config set store-dir ~/.pnpm-store

# Set BIOS clock in local time to fix dual boot problem
timedatectl set-local-rtc 1 --adjust-system-clock
