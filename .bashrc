#!/bin/bash
# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

. /etc/profile

if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

export PATH=$PATH:$HOME/bin

# Use liquidprompt
source ~/src/liquidprompt/liquidprompt
source ~/.config/liquidpromptrc
LP_PS1_POSTFIX="$(echo $?) "
