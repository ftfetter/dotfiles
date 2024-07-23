#!/bin/sh

alias nvimrc='nvim ~/.config/nvim/'

# Better grep output
alias grep='grep --color=auto'

# Confirmation before changing something
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'

# Top memory-eater processes
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# Top cpu-eater processes
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# Beautify ls
alias ls='ls --color=auto'
