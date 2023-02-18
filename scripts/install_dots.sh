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

echo "Creating sym-link of init.vim at $nvimdir"
ln -s ~/dotfiles/configs/init.vim $nvimdir/init.vim
echo "Creating sym-link of alacritty.yml at $alacrittydir"
ln -s ~/dotfiles/configs/alacritty.yml $alacrittydir/alacritty.yml
echo "Creating sym-link of helix config directory at $helix_dir"
ln -s ~/dotfiles/configs/helix $helix_dir

shopt -s dotglob
for f in "$dots_dir"*; do
	echo "Creating sym-link of '$f' at '$HOME'"
	ln -s "$HOME/dotfiles/dots/$f" "$HOME/.$f"
done

echo "Installing oh-my-zsh plugins"
cd $omz_dir || exit
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

cd $start_dir || exit
