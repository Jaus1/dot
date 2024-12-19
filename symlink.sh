#!/usr/bin/env sh

SOURCE_DIR=$HOME/dot/config
TARGET_DIR=$HOME/.config

programs=(
  alacritty
)

for program ($programs) {
    if ln -sf "$SOURCE_DIR/$program" "$TARGET_DIR"; then
      echo "Symlink created successfully: $TARGET_DIR/$program --> $SOURCE_DIR/$program"
    else
      echo "Error creating symlink: $?"
      # exit 1
    fi
}

