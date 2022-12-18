#!/bin/bash

nvimdir=~/.config/nvim/
alacrittydir=~/.config/alacritty/
dots_dir=~/dot-files/dots/

if [[ -d "$alacrittydir" ]]
then
	cp configs/alacritty.yml $alacrittydir
else
	echo "Directory '~/.config/alacritty' not found. Please install Alacritty, or insure this directory exists."
fi

if [[ -d "$nvimdir" ]]
then
	cp configs/init.vim $nvimdir
else
	echo "Directory '~/.config/nvim' not found. Please install NeoVim, or ensure this directory exists."
fi

shopt -s dotglob

for f in "$dots_dir"*; do
	echo "Copying '$f' to '$HOME'"
	cp "$f" "$HOME"
done
