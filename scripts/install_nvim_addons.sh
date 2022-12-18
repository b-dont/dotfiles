#!/bin/bash
# Installs my NeoVim Plugins to the correct dorectory.

start_dir=$(pwd)
nvimaddsdir=~/.local/share/nvim/site/pack/local/start

if [[ -d $nvimaddsdir ]]
then
	cd $nvimaddsdir || return
else
	echo "Directory '~/.local/share/nvim/site/pack/local/start' not found. Please make sure NeoVim is installed, and this path exists."
	exit 1
fi

git clone git@github.com:jiangmiao/auto-pairs.git
git clone git@github.com:preservim/nerdtree.git
git clone git@github.com:vim-airline/vim-airline.git
git clone git@github.com:vim-airline/vim-airline-themes.git
git clone git@github.com:neoclide/coc.nvim.git
git clone git@github.com:preservim/nerdcommenter.git
git clone git@github.com:joshdick/onedark.vim.git
git clone git@github.com:airblade/vim-gitgutter.git
git clone git@github.com:sheerun/vim-polyglot.git

cd "$start_dir" || return
