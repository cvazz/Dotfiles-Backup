#!/bin/bash

// install programs

list_of_programs=[ "firefox-tridactyl" "code" "zsh" ] 
for prog in ${list_of_programs[@]}; do 
    pamac build $prog
done


list_of_dotfiles=[ ".vimrc" ".zshrc" ".gitconfig" ] 
for dfile in ${list_of_dotfiles[@]}; do 
    ln -s "~/.dotfiles/$dfile" "~/$dfile"

// Keyboard
sudo ln -s "~/.dotfiles/ik" "/usr/share/X11/xkb/symbols/ik"

