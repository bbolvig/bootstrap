#!/bin/bash

# Note i've added the --enable-source -s flag. This was required to get further deps.
# Not sure whether these additional steps will be required when source is enabled from the beginning
# sudo apt-get upgrade
# sudo apt-get build-dep emacs26


sudo add-apt-repository -s ppa:kelleyk/emacs
sudo apt install emacs26

cd ~
mv .emacs.d .emacs.d.bak
mv .emacs .emacs.bak

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

sudo pip3 install afdko fonttools

FONT_HOME=/usr/share/fonts
# mkdir $FONT_HOME

echo "installing fonts at $PWD to $FONT_HOME"
sudo mkdir -p "$FONT_HOME/adobe-fonts/source-code-pro"
# find "$FONT_HOME" -iname '*.ttf' -exec echo '{}' \;

(sudo git clone \
     --branch release \
     --depth 1 \
     'https://github.com/adobe-fonts/source-code-pro.git' \
     "$FONT_HOME/adobe-source-code-pro" && \
 fc-cache -f -v "$FONT_HOME/adobe-source-code-pro")
