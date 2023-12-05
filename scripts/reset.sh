#!/usr/bin/bash

###########
## $HOME ##
###########

# bash
rm ~/.bashrc
cp ./scripts/bashrc.sh ~/.bashrc

# templates
templates(){
	rm ~/$TEMPLATE_DIRECTORY/bash-script.sh
	rm ~/$TEMPLATE_DIRECTORY/config-file.conf
	rm ~/$TEMPLATE_DIRECTORY/desktop-entry.desktop
	rm ~/$TEMPLATE_DIRECTORY/file
	rm ~/$TEMPLATE_DIRECTORY/json-file.json
	rm ~/$TEMPLATE_DIRECTORY/markdown-file.md
	rm ~/$TEMPLATE_DIRECTORY/systemd-service.service
	rm ~/$TEMPLATE_DIRECTORY/systemd-timer.timer
	rm ~/$TEMPLATE_DIRECTORY/text-file.txt
	rm ~/$TEMPLATE_DIRECTORY/toml-file.toml
	rm ~/$TEMPLATE_DIRECTORY/yaml-file.yaml
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
	echo "can't remove templates for your language, please report this behaviour on GitHub!"
esac

# ssh
rm ~/.ssh/config

######################
## $XDG_CONFIG_HOME ##
######################

# git
rm ~/.config/git/config

# yt-dlp
rm ~/.config/yt-dlp/config
