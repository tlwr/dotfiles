#!/usr/bin/env bash

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
