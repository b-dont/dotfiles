#!/bin/bash
# Installs my NeoVim Plugins to the correct dorectory.

start_dir=$(pwd)
nvimaddsdir=~/.local/share/nvim/site/pack/local/start

if ! [[ -d $nvimaddsdir ]]
then
	echo "Directory '~/.local/share/nvim/site/pack/local/start' not found. Creating directory"
	mkdir -p $nvimaddsdir
fi

cd $nvimaddsdir || exit

git clone https://github.com/jiangmiao/auto-pairs.git
git clone https://github.com/preservim/nerdtree.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git
git clone https://github.com/neoclide/coc.nvim.git
git clone https://github.com/preservim/nerdcommenter.git
git clone https://github.com/joshdick/onedark.vim.git
git clone https://github.com/airblade/vim-gitgutter.git
git clone https://github.com/sheerun/vim-polyglot.git

cd "$start_dir" || return
