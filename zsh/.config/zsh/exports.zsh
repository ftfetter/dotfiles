#!/bin/sh

# Defaults
export EDITOR='nvim'
export TERMINAL='kitty'
export BROWSER='chromium'
export WORKSPACE=$HOME/Workspace/
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

# Starship custom location
export STARSHIP_CONFIG=$ZSH_CONFIG/starship/starship.toml
export STARSHIP_CACHE=~/.starship/cache

# Go Env
export GOPATH=$HOME/go

# AWS Credentials
# cat ~/.aws/credentials
export AWS_ACCESS_KEY=''
export AWS_SECRET_ACCESS_KEY=''

export PATH=$HOME/bin:/usr/local/bin:$GOPATH/bin:$PATH
