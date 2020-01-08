#!/bin/bash

GLOBIGNORE=".:.."
shopt -u dotglob

ln -s $(dirname $0)/.* $HOME

sudo apt-get upgrade
sudo apt install --upgrade git tmux xclip

echo "Installing spacemacs..."
. $0/boot-spacemacs.sh
