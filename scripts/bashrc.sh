#!/usr/bin/bash

################################################
################################################
#######  _               _               #######
####### | |             | |              #######
####### | |__   __ _ ___| |__  _ __ ___  #######
####### | '_ \ / _` / __| '_ \| '__/ __| #######
####### | |_) | (_| \__ \ | | | | | (__  #######
####### |_.__/ \__,_|___/_| |_|_|  \___| #######
#######                                  #######
################################################
##################  client  ####################
################################################


################################################
########## user specific environment: ##########
################################################

# source system bash config
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi

# add user specific bin directory to PATH
if ! [[ "$PATH" =~ "$HOME/.local/bin:" ]]; then
    PATH="$HOME/.local/bin:$PATH"
fi
export PATH

# aliases
if [ -f ~/.dotfiles/scripts/aliases.sh ]; then
	. ~/.dotfiles/scripts/aliases.sh
fi

# environment
if [ -f ~/.dotfiles/scripts/env.sh ]; then
	. ~/.dotfiles/scripts/env.sh
fi
