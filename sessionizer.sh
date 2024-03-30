#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(find ~/.local/bin/ ~/.config/ ~/Skule/ING303/  ~/Prosjekt/ ~/Skule ~/HelgeVoldElektro/  ~/Skule/DAT_152  ~/Skule/DAT_158/  -mindepth 1 -maxdepth 1 -type d | fzf)
fi

if [[ -z $selected ]]; then
    exit 0
fi

cd "$selected"  # Change to the selected directory
