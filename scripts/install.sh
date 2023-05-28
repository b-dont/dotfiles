#!/bin/bash

packages=("alacritty", "helix", "zsh", "p10k", "tmux")

for package in "$packages[@]"; do
  stow $package
