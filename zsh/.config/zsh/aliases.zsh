#!/bin/sh

# always create parent directories
alias mkdir="mkdir -p"

# confirm before overwriting
alias cp="cp -i"
alias mv="mv -i"

# color grep output
alias grep="grep --color=auto"

# bat
if command -v bat &> /dev/null; then
  alias cat="bat -pp"
  alias catt="bat"
elif command -v batcat &> /dev/null; then
  alias cat="batcat -pp"
  alias catt="batcat"
fi

# git
alias gch="git-checkout-fzf"
