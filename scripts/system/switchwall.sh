#!/usr/bin/env bash

SHELL_CONFIG_FILE="$HOME/dotfiles/config.json"
DOTS_PATH="$HOME/dotfiles"
WALLPAPER_VAR=""

if command -v jq >/dev/null 2>&1; then
  echo "Setting WALLPAPER_VAR..."
  WALLPAPER_VAR=$(jq -r '.background.wallpaperPath' "$SHELL_CONFIG_FILE")
fi

if [ -z "$WALLPAPER_VAR" ]; then
  echo "Please set wallpaper path in config.json"
else
  echo $WALLPAPER_VAR
fi

SHELL_CONFIG_FILE="$HOME/dotfiles/config.json"
DOTS_PATH="$HOME/dotfiles"

if [ -f "$SHELL_CONFIG_FILE" ]; then
  if command -v jq >/dev/null 2>&1; then
    echo "Changing wallpaper..."
    jq --arg path "${WALLPAPER_VAR}" '.background.wallpaperPath = $path' \
      "$SHELL_CONFIG_FILE" > "$SHELL_CONFIG_FILE.tmp" \
      && mv "$SHELL_CONFIG_FILE.tmp" "$SHELL_CONFIG_FILE"
  fi
fi

if command -v matugen >/dev/null 2>&1; then
  if matugen image "${WALLPAPER_VAR}" --mode dark --source-color-index 0 \
    --config "${DOTS_PATH}/matugen/config.toml" 2>&1; then
  echo "Theme colors generated"
  fi
fi

if command -v awww >/dev/null 2>&1; then
  awww img "${WALLPAPER_VAR}"
fi



