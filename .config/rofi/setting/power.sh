#!/usr/bin/env bash

# Load Global Variable
source $HOME/.config

rofi_command="rofi -theme ~/.config/rofi/power.rasi"

# Options
shutdown=" "
reboot=" "
lock=" "
suspend=" "
logout=" "

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        poweroff
        ;;
    $reboot)
        reboot
        ;;
    $lock)
        pkill -KILL -u $(whoimi)
        ;;
    $suspend)
        systemctl suspend
        ;;
    $logout)
        pkill -KILL -u $(whoami)
        ;;
esac
