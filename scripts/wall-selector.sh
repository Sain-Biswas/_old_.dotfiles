#!/bin/bash

# Set some variables
wall_dir="${HOME}/.dotfiles/wallpapers/"
cacheDir="${HOME}/.cache/rofi-wallpaper/${theme}"
rofi_command="rofi -x11 -dmenu -theme ${HOME}/.dotfiles/.config/rofi/wall-selector.rasi"

# Create cache dir if not exists
if [ ! -d "${cacheDir}" ] ; then
        mkdir -p "${cacheDir}"
fi


physical_monitor_size=24
monitor_res=$(hyprctl monitors |grep -A2 Monitor |head -n 2 |awk '{print $1}' | grep -oE '^[0-9]+')
dotsperinch=$(echo "scale=2; $monitor_res / $physical_monitor_size" | bc | xargs printf "%.0f")
monitor_res=$(( $monitor_res * $physical_monitor_size / $dotsperinch ))

rofi_override="element-icon{size:${monitor_res}px;border-radius:0px;}"

# Convert images in directory and save to cache dir
for imagen in "$wall_dir"/*.{jpg,jpeg,png,webp}; do
	if [ -f "$imagen" ]; then
		nombre_archivo=$(basename "$imagen")
			if [ ! -f "${cacheDir}/${nombre_archivo}" ] ; then
				convert -strip "$imagen" -thumbnail 500x500^ -gravity center -extent 500x500 "${cacheDir}/${nombre_archivo}"
			fi
    fi
done

# Select a picture with rofi
wall_selection=$(find "${wall_dir}"  -maxdepth 1  -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) -exec basename {} \; | sort | while read -r A ; do  echo -en "$A\x00icon\x1f""${cacheDir}"/"$A\n" ; done | $rofi_command)
wall_path="~/.dotfiles/wallpapers/$wall_selection"

if [ "$wall_selection" = "" ]; then
    exit 0
fi

# Set the wallpaper
wal -i ~/.dotfiles/wallpapers/${wall_selection} -a 60

echo "preload = ${wall_path}" > ~/.dotfiles/.config/hypr/hyprpaper.conf
echo "wallpaper = , ${wall_path}" >> ~/.dotfiles/.config/hypr/hyprpaper.conf

# Update new theme
cat ~/.cache/wal/colors-rofi-dark.rasi > ~/.dotfiles/.config/rofi/colors.rasi
cat ~/.cache/wal/colors-waybar.css > ~/.dotfiles/.config/waybar/colors.css
cat ~/.cache/wal/colors-zed.json > ~/.dotfiles/.config/zed/themes/colors-zed.json
cat ~/.cache/wal/colors-ghostty > ~/.dotfiles/.config/ghostty/themes/pywal
cat ~/.cache/wal/colors-bat.tmTheme > ~/.dotfiles/.config/bat/themes/pywal.tmTheme
cat ~/.cache/wal/colors-gtk.css > ~/.dotfiles/.config/gtk-3.0/gtk.css
cat ~/.cache/wal/colors-gtk.css > ~/.dotfiles/.config/gtk-4.0/gtk.css
cat ~/.cache/wal/pywal.kvconfig > ~/.dotfiles/.config/Kvantum/pywal/pywal.kvconfig
cat ~/.cache/wal/pywal.svg > ~/.dotfiles/.config/Kvantum/pywal/pywal.svg
cat ~/.cache/wal/colors-terminal.zsh > ~/.dotfiles/pywal.zsh
cat ~/.cache/wal/colors-btop.theme > ~/.dotfiles/.config/btop/themes/pywal.theme
cat ~/.cache/wal/colors-dunst.dunstrc > ~/.dotfiles/.config/dunst/dunstrc
cat ~/.cache/wal/colors-hypr.conf > ~/.dotfiles/.config/hypr/configuration/colors.conf

bat cache --build

killall dunst
killall waybar
waybar &
dunst &

pywalfox update
wal-telegram --wal

hyprctl hyprpaper preload "${wall_path}"
hyprctl hyprpaper wallpaper ",${wall_path}"

exit 0
