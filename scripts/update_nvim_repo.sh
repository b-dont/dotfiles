#!/bin/bash

for d in $(find ~/.local/share/nvim/site/pack/local/start -maxdepth 1 -type d) do
	git config --get remote.origin.url > ~/dot-files/scripts/git-adds.txt
done
