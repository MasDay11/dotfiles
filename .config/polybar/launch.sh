#!/bin/bash

# Terminate polybar
killall -q polybar

# Make started polybar after all process
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Execute polybar at ~/.config/polybar/config
polybar -r  masday &
