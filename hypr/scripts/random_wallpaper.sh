#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpapaer"
TEMP_CONFIG="/tmp/hyprpaper_config.conf"

get_random_wallpaper() {
    find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.webp" -o -name "*.gif" -o -name "*.bmp" -o -name "*.tiff" \) | shuf -n 1
}

WALLPAPER1=$(get_random_wallpaper)
WALLPAPER2=$(get_random_wallpaper)
WALLPAPER3=$(get_random_wallpaper)

while [ "$WALLPAPER2" = "$WALLPAPER1" ]; do
    WALLPAPER2=$(get_random_wallpaper)
done

while [ "$WALLPAPER3" = "$WALLPAPER1" ] || [ "$WALLPAPER3" = "$WALLPAPER2" ]; do
    WALLPAPER3=$(get_random_wallpaper)
done

cat > "$TEMP_CONFIG" << EOF
preload = $WALLPAPER1
preload = $WALLPAPER2
preload = $WALLPAPER3
wallpaper = eDP-1,$WALLPAPER1
wallpaper = DP-1,$WALLPAPER2
wallpaper = DP-3,$WALLPAPER3
EOF

killall hyprpaper
hyprpaper -c "$TEMP_CONFIG"
