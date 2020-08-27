#!/bin/bash

GLOBIGNORE=".:.."
shopt -u dotglob

# TODO copies .git and replace existing files
ln -s "$(dirname $(realpath $0))"/.* $HOME

sudo apt-get upgrade
sudo apt install --upgrade git tmux xclip vim

echo "Installing spacemacs..."
"$(dirname $0)"/boot-spacemacs.sh
