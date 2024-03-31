#!/bin/bash

# List of available themes
themes=("ayu-dark" "ayu-mirage" "default" "gruvbox" "ayu" "blackhole" "nevil" "nord" "solarized-dark")

# Get a random index from the themes array
index=$((RANDOM % ${#themes[@]}))

# Get the random theme
random_theme=${themes[$index]}

# Set the random theme using regolith-look
regolith-look set "$random_theme"

