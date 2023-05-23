#!/bin/bash
# Installs my NeoVim Plugins to the correct dorectory.

start_dir=$(pwd)
nvimaddsdir=~/.local/share/nvim/site/pack/local/start
declare -A addons

addons=( 
	["auto pairs"]="https://github.com/jiangmiao/auto-pairs.git"
	["nerdtree"]="https://github.com/preservim/nerdtree.git"
	["vim airline"]="https://github.com/vim-airline/vim-airline.git"
	["vim airline themes"]="https://github.com/vim-airline/vim-airline-themes.git"
	["coc.nvim"]="https://github.com/neoclide/coc.nvim.git"
	["nerdcommenter"]="https://github.com/preservim/nerdcommenter.git"
	["onedark.vim"]="https://github.com/joshdick/onedark.vim.git"
	["vim gitgutter"]="https://github.com/airblade/vim-gitgutter.git"
	["vim polyglot"]="https://github.com/sheerun/vim-polyglot.git"
)

if ! [[ -d $nvimaddsdir ]]
then
	echo "Directory '~/.local/share/nvim/site/pack/local/start' not found. Creating directory"
	mkdir -p $nvimaddsdir
fi

cd $nvimaddsdir || exit

for addon in "${!addons[@]}"; 
	do 
	echo "installing $addon";
	git clone ${addons[$addon]};

cd "$start_dir" || return
