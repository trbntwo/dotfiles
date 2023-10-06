#!/usr/bin/bash

###########
## $HOME ##
###########

# bash
if [ -f ~/.bashrc ]; then
	rm ~/.bashrc
fi
ln -sf ./scripts/bashrc.sh ~/.bashrc

# templates
templates(){
	ln -sf ./templates/bash-script.sh ~/$TEMPLATE_DIRECTORY/bash-script.sh
	ln -sf ./templates/config-file.conf ~/$TEMPLATE_DIRECTORY/config-file.conf
	ln -sf ./templates/desktop-entry.desktop ~/$TEMPLATE_DIRECTORY/desktop-entry.desktop
	ln -sf ./templates/file ~/$TEMPLATE_DIRECTORY/file
	ln -sf ./templates/json-file.json ~/$TEMPLATE_DIRECTORY/json-file.json
	ln -sf ./templates/markdown-file.md ~/$TEMPLATE_DIRECTORY/markdown-file.md
	ln -sf ./templates/systemd-service.service ~/$TEMPLATE_DIRECTORY/systemd-service.service
	ln -sf ./templates/systemd-timer.timer ~/$TEMPLATE_DIRECTORY/systemd-timer.timer
	ln -sf ./templates/text-file.txt ~/$TEMPLATE_DIRECTORY/text-file.txt
	ln -sf ./templates/toml-file.toml ~/$TEMPLATE_DIRECTORY/toml-file.toml
	ln -sf ./templates/yaml-file.yaml ~/$TEMPLATE_DIRECTORY/yaml-file.yaml
}

case $LANG in
    de_DE.UTF-8)
		TEMPLATE_DIRECTORY="Vorlagen"
		templates
		;;
    en_US.UTF-8 | en_GB.UTF-8)
		TEMPLATE_DIRECTORY="Templates"
		templates
		;;
    *)
	echo "can't set templates for $LANG, please report this behaviour on GitHub!"
esac

# ssh
if [ ! -d ~/.ssh ]; then
	mkdir ~/.ssh
fi
ln -sf ./ssh/config ~/.ssh/config

######################
## $XDG_CONFIG_HOME ##
######################

# git
if [ ! -d ~/.config/git ]; then
	mkdir ~/.config/git
fi
ln -sf ./config/git/config ~/.config/git/config

# yt-dlp
if [ ! -d ~/.config/yt-dlp ]; then
	mkdir ~/.config/yt-dlp
fi
ln -sf ./config/yt-dlp/config ~/.config/yt-dlp/config
