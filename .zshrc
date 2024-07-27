HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

#######################
### my configration ###
#######################

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Enable Vim mode in ZSH
bindkey -v

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^E' edit-command-line                   # Opens Vim to edit current command line

bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward


#######################
### my allias #########
#######################

alias tmxa='tmux attach'
alias tmxls='tmux ls'
alias tmxnew='tmux new-session -s'
alias vim='nvim'

# FZF binding for zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PATH=$HOME/bin:$PATH

# starship
eval "$(starship init zsh)"
