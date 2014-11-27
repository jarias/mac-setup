#!/bin/bash

git config --global user.name "$(finger `whoami` | awk -F: '{ print $3 }' | head -n1 | sed 's/^ //')"
git config --global user.email jarias01@gmail.com