#!/bin/bash

pushd ~/.dotfiles/dots/$1
packages=(*)
popd

for package in "$packages"; 
do
  stow -t "$HOME" -S "$package"
done