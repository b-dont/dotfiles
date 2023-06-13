#!/bin/bash

cd $HOME/.dotfiles/dots/$1 || exit

pushd $HOME/.dotfiles/dots/$1
packages=(*)
popd

if ! [ -z "$1" ] && [ -z "$2" ]
then
  for package in "$packages"; 
  do
    stow -t "$HOME" -S "$package"
  done
fi

if ! [ -z "$2" ]
then
  stow -t "$HOME" -S "$2"
fi