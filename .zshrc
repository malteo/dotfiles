# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agkozak"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  asdf
  autojump
  git
  k
  ssh-agent
  zsh-autosuggestions
)

zstyle :omz:plugins:ssh-agent lazy yes

source $ZSH/oh-my-zsh.sh

alias coins="python ~/dev/coinwatch/bin/coinwatch"
alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
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
alias ls="lsd"
#alias omw="portmod openmw"
#alias ssh="TERM=xterm-color ssh"

# direnv
(( $+commands[direnv] )) && eval "$(direnv hook zsh)"

# histdb
if [ -d "$ZSH_CUSTOM/plugins/zsh-histdb" ]
then
  source $HOME/.oh-my-zsh/custom/plugins/zsh-histdb/sqlite-history.zsh
  autoload -Uz add-zsh-hook
fi
