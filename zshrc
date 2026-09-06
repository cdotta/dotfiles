eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/.local/bin:$PATH"

HISTSIZE=50000
SAVEHIST=50000
setopt extended_history share_history hist_ignore_dups hist_ignore_space hist_verify
setopt autocd interactive_comments

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

alias ls='ls -G'
alias gst='git status'
alias gco='git checkout'
alias glog='git log --oneline --decorate --graph'
alias gb='git branch'
alias -- -='cd -'

source "$(brew --prefix antidote)/share/antidote/antidote.zsh"
antidote load

eval "$(mise activate zsh)"
eval "$(starship init zsh)"
