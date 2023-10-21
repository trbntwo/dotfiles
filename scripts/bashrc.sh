# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:" ]]; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

if [ -f ~/.dotfiles/scripts/aliases.sh ]; then
	. ~/.dotfiles/scripts/aliases.sh
fi

if [ -f ~/.dotfiles/scripts/env.sh ]; then
	. ~/.dotfiles/scripts/env.sh
fi