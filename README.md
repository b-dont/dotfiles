# My dot files

These are my dot files and configs for my terminal emulator, shell, and text editor. To use these files, pull the repo and follow the installation instructions below.

## Required software
1. [Alacritty](https://github.com/alacritty/alacritty)
2. [zsh](https://github.com/zsh-users/zsh)
3. [oh-my-zsh](https://github.com/ohmyzsh)
4. [powerlevel10k](https://github.com/romkatv/powerlevel10k)
5. [NeoVim](https://github.com/neovim/neovim)
6. [Fira Code Nerd Font](https://github.com/tonsky/FiraCode)

## NeoVim Addons
1. [auto-pairs](https://github.com/jiangmiao/auto-pairs)
2. [coc.nvim](https://github.com/neoclide/coc.nvim)
3. [gruvbox](https://github.com/morhetz/gruvbox)
4. [nerdcommenter](https://github.com/preservim/nerdcommenter)
5. [nerdtree](https://github.com/preservim/nerdtree)
6. [vim-airline](https://github.com/vim-airline/vim-airline)
7. [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
8. [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
9. [vim-polyglot](https://github.com/sheerun/vim-polyglot)

I don't use a plugin-manager for NeoVim, I simply clone the git repository for whatever addons I want to this location: `~/.local/share/nvim/site/pack/local/start`. NeoVim will automatically read the addons from this directory at launch. `coc.nvim` may need a `yarn install` after any updates, which are done via a simple `git pull`. The `scripts/` directory in this repository has a simple script that will run through each of the addon directories and run the `git pull` command to update all of the addons at once. 

## oh-my-zsh Addons
1. [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
2. [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

The installation of these addons are installed automatically with the `./install.sh` script.

## Installation
To install the dot files and configs, just run `./install.sh` from `dot-files/`. This will copy all of the dot files to your home directory, and and copy the configs for NeoVim and Alacritty to their proper locations. 

To update the files, run `git pull` in the directory, then run `updots` from anywhere. There's an alias in the `.zshrc` that will call the updates. You can update your NeoVim plugins by running `nvimup` from anywhere.

## TODOs
- Implement compatibility with [GNU stow](https://www.gnu.org/software/stow/manual/stow.html)
- Refactor install and update scripts for NeoVim plugins and oh-my-zsh addons
