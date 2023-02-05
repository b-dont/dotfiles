#!/bin/bash

rsync -avu \
~/dotfiles/configs/helix ~/.config/helix | \
rsync -avu \
~/dotfiles/dots/p10k.zsh ~/.p10k.zsh | \
rsync -avu \
~/dotfiles/dots/tmux.conf ~/.tmux.conf | \
rsync -avu \
~/dotfiles/dots/zshrc ~/.zshrc