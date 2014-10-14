#!/bin/bash

#No password sudo
sudo sed -i .bak -e 's/^# \(%wheel.*ALL=(ALL) NOPASSWD: ALL\)/\1/g' /etc/sudoers
sudo dscl . append /Groups/wheel GroupMembership $USER
#Install Ansible
git clone https://github.com/ansible/ansible.git ~/src/github.com/ansible/ansible; cd ~/src/github.com/ansible/ansible; sudo make install
#Run Ansible
PYTHONIOENCODING='utf-8' HOMEBREW_CASK_OPTS="--appdir=/Applications" ansible-galaxy install -r requirements.yml && ansible-playbook desktop.yml
#Return to normal password sudo
sudo dscl . delete /Groups/wheel GroupMembership $USER