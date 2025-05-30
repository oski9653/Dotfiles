#!/bin/zsh

WAYBAR_DIR="$HOME/.config/waybar"
TOP_DIR="$WAYBAR_DIR/top"
SIDE_DIR="$WAYBAR_DIR/side"

# Determine which layout is currently active by checking the config symlink
current_target=$(readlink "$WAYBAR_DIR/config.jsonc")

if [[ "$current_target" == *"top/config.jsonc" ]]; then
    ln -sf "$SIDE_DIR/config.jsonc" "$WAYBAR_DIR/config.jsonc"
    ln -sf "$SIDE_DIR/style.css" "$WAYBAR_DIR/style.css"
    ln -sf "$SIDE_DIR/colors.css" "$WAYBAR_DIR/colors.css"
else
    ln -sf "$TOP_DIR/config.jsonc" "$WAYBAR_DIR/config.jsonc"
    ln -sf "$TOP_DIR/style.css" "$WAYBAR_DIR/style.css"
    ln -sf "$TOP_DIR/colors.css" "$WAYBAR_DIR/colors.css"
fi

# Restart waybar
pkill waybar
waybar &

