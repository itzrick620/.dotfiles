#!/bin/bash

# This script cleans up after the Linux setup.

# Remove the .vimrc file in the home directory
rm "$HOME/.vimrc"

# Remove the line 'source ~/.dotfiles/etc/bashrc custom' from the .bashrc file in the home directory
sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' "$HOME/.bashrc"

# Remove the .TRASH directory in the home directory
rm -r "$HOME/.TRASH"

