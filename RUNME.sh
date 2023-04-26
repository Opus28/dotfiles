#!/bin/zsh

dir=$(pwd -P)
dotfiles=(bash i3 lf nvim picom x)

print -P "Running bootstrap script\n"

for file in $dotfiles; do
    echo "Stowing $file"
    stow -t ~/ -d ~/dotfiles -nv -R $file
done
