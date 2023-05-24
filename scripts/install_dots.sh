#!/bin/bash

set -euf

start_dir=$(pwd)
configs_dir=~/dotfiles/configs
target_os=$(uname -s)

nvimdir=~/.config/nvim
alacrittydir=~/.config/alacritty
helix_dir=~/.config/helix
dots_dir=~/dotfiles/dots
omz_dir=~/.oh-my-zsh/custom/plugins

dirs=(omz_dir, helix_dir, alacrittydir, nvimdir)
configs=("init.vim", "alacritty.yml", "$helix_dir")

for dir in $dirs; do
	if ! [[ -d "$dir" ]]; then
		echo "Directory $dir not found. Creating $dir."
		mkdir -p $dir

		if [ $dir -eq $nvimdir ]; then
			echo "Creating sym-link of init.vim at $dir"
			ln -s $configs_dir/init.vim $dir/init.vim

		elif [ $dir -eq $alacrittydir ]; then
			echo "Creating sym-link of alacritty.yml at $dir"
			ln -s $configs_dir/alacritty.yml $dir/alacritty.yml

		elif [ $dir -eq $helix_dir ]; then
			echo "Creating sym-link of helix config directory at $dir"
			ln -s $configs_dir/helix $dir
		fi
	fi
done

shopt -s dotglob
for f in "$dots_dir"*; do
	echo "Creating sym-link of '$f' at '$HOME'"
	ln -s "$HOME/$dots_dir/$f" "$HOME/.$f"
done

case $target_os in
	Darwin)
		find $dots_dir -type f -regex '(?<=\-mac)' -exec ln -s '{}' ~/.'{}'
		;;
esac

echo "Installing oh-my-zsh plugins"
cd $omz_dir || exit
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

cd $start_dir || exit
