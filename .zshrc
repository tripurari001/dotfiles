# --- 1. POWERLEVEL10K INSTANT PROMPT (Must stay at the top) ---
# This makes your terminal load instantly (< 1ms) even with plugins.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# --- 1. ZAP PLUGIN MANAGER ---
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "romkatv/powerlevel10k"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-history-substring-search"
plug "zap-zsh/supercharge"
plug "zap-zsh/fzf"

# --- 2. ENVIRONMENT VARIABLES ---
export EDITOR="nvim"
export VISUAL="nvim"

# --- 4. KEYBINDINGS & ADVANCED HISTORY ---
# Set up history limits
HISTSIZE=10000
SAVEHIST=10000

# use ctrl+E for edit in nvim
autoload -z edit-command-line
zle -N edit-command-line
bindkey '^E' edit-command-line

# Bind Ctrl+P and Ctrl+N to partial history search
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down

# --- 3. FZF INTEGRATION & THEME ---
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!{.git,node_modules}/*"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--height 40% --layout=reverse --border"

# --- 4. CLEANER ALIASES (Nvim & Zellij) ---
alias vi="nvim"
alias vim="nvim"

# Zellij shortcuts
alias zj="zellij"
alias zja="zellij attach"
alias zjl="zellij list-sessions"
alias zjk="zellij kill-session"
alias zjka="zellij kill-all-sessions"

# --- 5. NEOVIM + ZELLIJ + FZF KILLER FUNCTIONS ---

# 1. Fuzzy find a file and open it immediately in Neovim
vf() {
  local file
  file=$(fzf --preview 'bat --style=numbers --color=always --line-range :50 {}')
  [ -n "$file" ] && nvim "$file"
}

# 2. Fuzzy switch/attach to Zellij sessions
zj-switch() {
  local session
  session=$(zellij list-sessions | awk '{print $1}' | fzf --exit-0 --prompt="Select Zellij Session: ")
  if [ -n "$session" ]; then
    zellij attach "$session"
  else
    # If no session is selected, ask to create a new one
    echo -n "Create new session? (name / leave blank for random): "
    read res
    if [ -n "$res" ]; then
      zellij -s "$res"
    else
      zellij
    fi
  fi
}
alias zs="zj-switch"

# --- 7. INITIALIZE PROMPT ---
# CHANGED: Load P10k configuration if it exists
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
