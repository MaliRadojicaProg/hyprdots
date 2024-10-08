#!/bin/bash
# Adjust brightness
brightnessctl set "$1"

# Get current brightness and max brightness
current_brightness=$(brightnessctl g)
max_brightness=$(brightnessctl m)

# Calculate percentage
percent=$(echo "($current_brightness/$max_brightness)*100" | bc -l | awk '{printf "%d", $1}')

# Send notification via dunst
dunstify -r 991049 "Brightness: $percent%"

