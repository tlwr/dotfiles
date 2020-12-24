#!/usr/bin/env zsh

path+=/opt/homebrew/bin
path+=$HOME/.bin

export EDITOR=vim

if [ "$(uname)" = "Darwin" ]; then
  export SSH_AUTH_SOCK=/Users/toby/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
fi
