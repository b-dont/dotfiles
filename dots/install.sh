#!/bin/bash

pushd ~/.dotfiles/dots
packages=(*)
popd

for package in "$packages"; 
do
  stow -t "$HOME" -S "$package"
done