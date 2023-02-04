#!/bin/bash

start_dir=$(pwd)
nvimdir=~/.config/nvim/
alacrittydir=~/.config/alacritty/
helix_dir=~/.config/helix/
dots_dir=~/dotfiles/dots/
omz_dir=~/.oh-my-zsh/custom/plugins

if ! [[ -d "$helix_dir" ]]
then
	echo "Directory '~/.config/helix' not found. Creating directory."
	mkdir -p $helix_dir
fi

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
echo "Moving helix config files to $helix_dir"
cp -r configs/helix/* $helix_dir

shopt -s dotglob
for f in "$dots_dir"*; do
	echo "Copying '$f' to '$HOME'"
	cp "$f" "$HOME/.$f"
done

echo "Installing oh-my-zsh plugins"
cd $omz_dir || exit
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

cd $start_dir || exit
