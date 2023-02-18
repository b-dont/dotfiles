#!/bin/bash
# update all neovim addons via git pull in the addon directory

start_dir=$(pwd)

for d in $(find ~/.local/share/nvim/site/pack/local/start -maxdepth 1 -type d)
do
	cd "$d" || exit

	# Grab the current directory without the full path
	# correct if the case is PWD=/
	current_dir=${PWD##*/}
	current_dir=${current_dir:-/}

	printf '%s ' "Updating: $current_dir"
	git pull
	cd ..
done

cd "$start_dir" || exit
