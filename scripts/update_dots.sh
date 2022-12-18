#!/bin/bash
# Update all dot files/configs vai rsync. 
# Run this after a `git pull` to update.

dot_dir="$HOME/dot-files/dots/"
conf_dir="$HOME/dot-files/configs/"
home_config_dir="$HOME/.config"
alacritty_conf="$home_config_dir/alacritty/"
init_vim="$home_config_dir/nvim/"

for f in $dot_dir/; do
	rsync -vai "$f" "$HOME/$f"
done

cd "$conf_dir" || return

rsync -vai alacritty.yml "$alacritty_conf"init.vim
rsync -vai init.vim "$init_vim"init.vim
