#!/bin/bash

nvimdir=~/.config/nvim/
alacrittydir=~/.config/alacritty/
dots_dir=~/dot-files/dots/
omz_dir=~/.oh-my-zsh/custom/plugins

if ! [[ -d "$alacrittydir" ]]
then
	echo "Directory '~/.config/alacritty' not found. Creating directory."
	mkdir -p $alacrittydir
fi

if ! [[ -d "$nvimdir" ]]
then
	echo "Directory '~/.config/nvim' not found. Creating directory."
	mkdir -p $nvimdir
fi

if ! [[ -d "$omz_dir" ]]
then
	echo "Directory '~/.oh-my-zsh/custom/plugins' not found. Creating directory."
	mkdir -p $omz_dir
fi

echo "Moving init.vim to $nvimdir"
cp configs/init.vim $nvimdir
echo "Moving alacritty.yml to $alacrittydir"
cp configs/alacritty.yml $alacrittydir

shopt -s dotglob
for f in "$dots_dir"*; do
	echo "Copying '$f' to '$HOME'"
	cp "$f" "$HOME"
done
