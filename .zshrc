# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="git-prompt"

DISABLE_UNTRACKED_FILES_DIRTY="true"

ZSH_CUSTOM="$HOME/.zsh-custom"

function get_cluster_short() {
  echo "$1" | cut -d / -f2
}

KUBE_PS1_SYMBOL_PADDING=true
KUBE_PS1_CLUSTER_FUNCTION=get_cluster_short

plugins=(
  direnv
  gh
  git
  k
  kube-ps1
  mise
  ssh-agent
  zoxide
  zsh-autosuggestions
)

zstyle :omz:plugins:ssh-agent lazy yes

source $ZSH/oh-my-zsh.sh

RPROMPT='$(kube_ps1)'

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

# eza
(( $+commands[eza] )) && alias ls="eza"

# atuin
(( $+commands[atuin] )) && eval "$(atuin init zsh --disable-up-arrow)"

function jwt-decode {
  jq -R 'split(".") |.[0:2] | map(@base64d) | map(fromjson)' <<< $1
}

if [[ -f ~/.zshrc.local ]]; then
  . ~/.zshrc.local
fi
