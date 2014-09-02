#!/bin/bash
. /etc/profile

if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

export PATH=$PATH:$HOME/bin

# Use liquidprompt
source ~/src/liquidprompt/liquidprompt
source ~/.config/liquidpromptrc
LP_PS1_POSTFIX="$(echo $?) "
