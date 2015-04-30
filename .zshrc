## Environment variable configuration
#
# LANG
#
export LANG=ja_JP.UTF-8

## Default shell configuration
#
# set prompt
#
PROMPT="%/%% "
PROMPT2="%_%% "

setopt auto_cd              # change directory automatically
setopt auto_pushd           # get dirs history list w/ cd -[tab]
setopt pushd_ignore_dups    # ignore duplicated history stack
setopt list_packed          # display list shortly
setopt extended_glob

## Command history configuration
#
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups # ignore duplicated command history
setopt share_history    # share command in multiple zsh

## Completion configuration
#
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#autoload predict-on
#predict-on
#
export LSCOLORS=ExFxCxdxBxegedabagacad
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43:30'
zstyle ':completion:*'list-colors 'di=;34;1''ln=;35;1''so=;32;1''ex=31;1''bd=46;34''cd=43;34'

setopt multios

## Alias configuration
#
alias ll="ls -laG"
alias ls="ls -G"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

hash -d pcl=~/Dropbox/checklist
