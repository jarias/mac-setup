#!/bin/bash

if [ ! -f /usr/local/bin/brew ]; then
	#Install homebrew
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#Install Ansible
brew install ansible

#Run Ansible
PYTHONIOENCODING='utf-8' ansible-playbook desktop.yml --ask-sudo-pass
