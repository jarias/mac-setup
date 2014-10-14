#!/bin/bash

#No password sudo
sudo sed -i .bak -e 's/^# \(%wheel.*ALL=(ALL) NOPASSWD: ALL\)/\1/g' /etc/sudoers
sudo dscl . append /Groups/wheel GroupMembership $USER

#Install XCode Command-Line tools
sudo ./install-xcode.sh

#Install Ansible
sudo easy_install pip
sudo CFLAGS=-Qunused-arguments CPPFLAGS=-Qunused-arguments pip install ansible

#Run Ansible
PYTHONIOENCODING='utf-8' HOMEBREW_CASK_OPTS="--appdir=/Applications" ansible-galaxy install -r requirements.yml && ansible-playbook desktop.yml

#Return to normal password sudo
sudo dscl . delete /Groups/wheel GroupMembership $USER