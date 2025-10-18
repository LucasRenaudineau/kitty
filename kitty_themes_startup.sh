#!/usr/bin/env bash

# Get the current hour (00–23)
HOUR=$(date +%H)

# Path to your themes
LIGHT_THEME="$HOME/.config/kitty/themes/light_theme.conf"
DARK_THEME="$HOME/.config/kitty/themes/dark_theme.conf"

# Kitty remote control socket
KITTY_SOCKET="unix:/tmp/kitty"

if [ "$HOUR" -ge 6 ] && [ "$HOUR" -lt 20 ]; then
    kitty @ --to "$KITTY_SOCKET" set-colors -a "$LIGHT_THEME"
else
    kitty @ --to "$KITTY_SOCKET" set-colors -a "$DARK_THEME"
fi
