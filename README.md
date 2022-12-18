# My dot files

These are my dot files and configs for my terminal emulator, shell, and text editor. To use these files, pull the repo and follow the installation instructions below.

## Required software
1. [Alacritty](https://github.com/alacritty/alacritty) terminal emulator
2. [zsh](https://github.com/zsh-users/zsh) shell
3. [oh-my-zsh](https://github.com/ohmyzsh)
4. [powerlevel10k](https://github.com/romkatv/powerlevel10k) zsh themes
4. [NeoVim](https://github.com/neovim/neovim) text editor

## Installation
To install the dot files and configs, just run `./install.sh` from `dot-files/`. This will copy all of the dot files to your home directory, and and copy the configs for NeoVim and Alacritty to their proper locations. 

To update the files, run `git pull` in the directory, then run `updots` from anywhere. There's an alias in the `.zshrc` that will call the updates. You can update your NeoVim plugins by running `nvimup` from anywhere.
