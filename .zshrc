# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="git-prompt"

DISABLE_UNTRACKED_FILES_DIRTY="true"

ZSH_CUSTOM="$HOME/.zsh-custom"

plugins=(
  vi-mode
  direnv
  git
  fzf
  k
  ssh-agent
  zoxide
  zsh-autosuggestions
)

zstyle :omz:plugins:ssh-agent lazy yes

source $ZSH/oh-my-zsh.sh

alias dcd="docker compose down"
alias dcps="docker compose ps"
alias dcu="docker compose up -d"
alias gb="gh branch"
alias gd="git diff"
alias gdc="git diff --cached"
alias gd="git diff"
alias gg="git grep"
alias gl="git ls"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gpr="gh pr create"
alias gs="git st"

# lsd
(( $+commands[lsd] )) && alias ls="lsd"

# rtx
(( $+commands[rtx] )) && eval "$(rtx activate zsh)"

if [[ -f ~/.zshrc.local ]]; then
  . ~/.zshrc.local
fi
