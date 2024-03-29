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
test -s /opt/homebreak/opt/asdf/adsf.sh && . /opt/homebrew/opt/asdf/asdf.sh

set -o vi

if command -v nvim >/dev/null ; then
  export EDITOR=nvim
  export VISUAL=nvim
else
  export EDITOR=vim
  export VISUAL=vim
fi

if [ "$(uname)" = "Darwin" ] && [ "$(uname -m)" != "x86_64" ]; then
  export SSH_AUTH_SOCK=/Users/toby/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
fi

export GOENV_ROOT="$HOME/.goenv"

eval "$(rbenv init -)"
eval "$(goenv init -)"
. $(brew --prefix asdf)/asdf.sh

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

alias v=vim
alias d=docker
alias g=git
alias k=kubectl
alias op=operator-tools
alias tf=terraform

command -v nvim >/dev/null && alias vim=nvim
command -v bat >/dev/null && alias cat=bat

[ -f "$HOME/.bash_profile_b" ] && source "$HOME/.bash_profile_b"
export PATH="$HOME/.bin:$PATH"
shopt -s direxpand

eval "$(starship init bash)"

# opam configuration
test -r /Users/toby/.opam/opam-init/init.sh && . /Users/toby/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
