#!/bin/bash

# This script sets up a Linux environment.

# Redirect all output to linuxsetup.log
exec &>> linuxsetup.log

# Check if the operating system type is Linux
if [ "$(uname)" != "Linux" ]; then
  echo "Error: This script only works on Linux" >&2
  exit 1
fi

# Create the .TRASH directory in the home directory if it doesn't exist
if [ ! -d "$HOME/.TRASH" ]; then
  mkdir "$HOME/.TRASH"
fi

# Rename .vimrc file to .bup vimrc if it exists
if [ -f "$HOME/.vimrc" ]; then
  mv "$HOME/.vimrc" "$HOME/.bup vimrc"
  echo "Current .vimrc file was changed to '.bup vimrc'" >&2
fi

# Overwrite the contents of /etc/vimrc to ~/.vimrc
cat /etc/vimrc > "$HOME/.vimrc"

# Add 'source ~/.dotfiles/etc/bashrc custom' to the end of ~/.bashrc
echo "source ~/.dotfiles/etc/bashrc custom" >> "$HOME/.bashrc"

