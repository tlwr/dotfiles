#!/usr/bin/env bash

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.bin:$PATH"

set -o vi
export EDITOR=vim

if [ "$(uname)" = "Darwin" ]; then
  export SSH_AUTH_SOCK=/Users/toby/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
fi

export GOENV_ROOT="$HOME/.goenv"

eval "$(rbenv init -)"
eval "$(goenv init -)"

export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

alias g=git
