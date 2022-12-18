#!/bin/bash
# update all neovim addons via git pull in the addon directory

start_dir=$(pwd)

for d in $(find ~/.local/share/nvim/site/pack/local/start -maxdepth 1 -type d)
do
	cd "$d" || return
	git pull
	cd ..
done

cd "$start_dir" || return
