#!/bin/bash

dotfiles_name=[ "zsh/" "git/" "tmux/" "./" ] 
dotfiles_folder=[ ".zshrc" ".gitconfig" ".tmux.conf" "pycodestyle" ] 
for ii in ${!dotfiles_folder[@]}; do 
    echo "~/.dotfiles/${dotfiles_folder[ii]}${dotfiles_name[ii]}" "~/${dotfiles_name[ii]}"
    // ln -s "~/.dotfiles/${dotfiles_folder[ii]}${dotfiles_name[ii]}" "~/${dotfiles_name[ii]}"

// neovim
// ln -s "~/.dotfiles/nvim/.config/nvim" "~/.config/nvim"
// git clone --depth 1 https://github.com/wbthomason/packer.nvim\
// ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

// Keyboard
// sudo ln -s "~/.dotfiles/ik" "/usr/share/X11/xkb/symbols/ik"


