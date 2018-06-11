#!/bin/bash

echo "Copying files"

#default i3 config file?
rm -rf ~/.config/i3
ln -s $(pwd)/i3 ~/.config/i3
rm -rf ~/.config/i3blocks
ln -s $(pwd)/i3blocks ~/.config/i3blocks
rm -rf ~/.config/terminator
ln -s $(pwd)/terminator ~/.config/terminator

ln -s $(pwd)/nano/nanorc ~/.nanorc
ln -s $(pwd)/vim/vimrc ~/.vimrc

ln -s $(pwd)/pictures/wallpaper.png ~/Pictures/wallpaper.png

ln -s $(pwd)/pylint/pylintrc ~/.pylintrc

ln -s $(pwd)/shells ~/.shells
ln -s $(pwd)/scripts ~/.scripts

ln -s $(pwd)/xresources/Xresources ~/.Xresources

sudo pacman -S aurman
aurman -S noto-fonts-cjk noto-fonts-emoji noto-fonts