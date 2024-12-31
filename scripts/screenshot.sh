#!/usr/bin/env bash

# Variable
active="Active"
screen="Screen"
area="Area"
output="Output"

# rofi Option Selector
screenshot_options() {
    echo -e "$active\n$screen\n$area\n$output" | rofi -dmenu -p 'Screen Shot' -mesg 'Select screenshot mode' -theme ~/.config/rofi/screenshot.rasi
}

#Action
chosen="$(screenshot_options)"

sleep 1

case ${chosen} in
    $active)
        temp_pic="$(grimblast save active)"
        ;;
    $screen)
        temp_pic="$(grimblast save screen)"
        ;;
    $area)s
        temp_pic="$(grimblast --freeze save area)"
        ;;
    $output)
        temp_pic="$(grimblast save output)"
        ;;
esac

satty --filename $temp_pic  --output-filename $temp_pic
