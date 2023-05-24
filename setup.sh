#!/bin/bash

// install programs

list_of_programs=[ "firefox-tridactyl" "code" "zsh" ] 
for prog in ${list_of_programs[@]}; do 
    pamac build $prog
done


list_of_dotfiles=[ ".zshrc" ".gitconfig" ] 
for dfile in ${list_of_dotfiles[@]}; do 
    ln -s "~/.dotfiles/$dfile" "~/$dfile"

// neovim
ln -s "~/.dotfiles/nvim/.config/nvim" "~/.config/nvim"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

// Keyboard
sudo ln -s "~/.dotfiles/ik" "/usr/share/X11/xkb/symbols/ik"

