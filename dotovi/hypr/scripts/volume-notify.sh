#!/bin/bash
# Adjust volume
pamixer --set-volume "$1"

# Get current volume and mute status
volume=$(pamixer --get-volume)
mute=$(pamixer --get-mute)

# Display volume or mute notification
if [ "$mute" = "true" ]; then
    dunstify -r 991050 "Volume: Muted"
else
    dunstify -r 991050 "Volume: $volume%"
fi

