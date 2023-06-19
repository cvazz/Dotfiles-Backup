###############################################################################
################################## Aliases ####################################
###############################################################################

alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"
alias ll="[ \"\$(exa .)\" ] && exa  || exa -a"

function les() {
   zathura $@ &
}


###############################################################################
############################# Default Applications ############################
###############################################################################

source ~/.zshrc_local
export EDITOR=nvim


###############################################################################
############################# Original Settings ###############################
###############################################################################

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

###############################################################################
################################# Conda Setup #################################
###############################################################################

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/cvaz/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/cvaz/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/cvaz/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/cvaz/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

###############################################################################
############################### Vi Mode in Shell ##############################
###############################################################################

bindkey -v # Use vim keys in zsh # muss am Ende stehen

###############################################################################
############################### Shell Bindings ################################
###############################################################################

bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey "^Z" undo

# Yank to the system clipboard
function vi-yank-xclip {
    zle vi-yank
   echo "$CUTBUFFER" | xclip -i
}

zle -N vi-yank-xclip
bindkey -M vicmd 'y' vi-yank-xclip


eval "$(starship init zsh)"
