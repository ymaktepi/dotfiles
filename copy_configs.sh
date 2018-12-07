#!/bin/bash

echo "Copying files"

#default i3 config file?
rm -rf ~/.config/i3
ln -s $(pwd)/i3 ~/.config/i3

rm -rf ~/.config/i3blocks
ln -s $(pwd)/i3blocks ~/.config/i3blocks

rm -rf ~/.config/terminator
ln -s $(pwd)/terminator ~/.config/terminator

rm -rf ~/.config/ranger
ln -s $(pwd)/ranger ~/.config/ranger

rm ~/.vimrc
ln -s $(pwd)/vim/vimrc ~/.vimrc

rm ~/Pictures/wallpaper.png
ln -s $(pwd)/pictures/wallpaper.png ~/Pictures/wallpaper.png

rm ~/.pylintrc
ln -s $(pwd)/pylint/pylintrc ~/.pylintrc

rm -rf ~/.shells
ln -s $(pwd)/shells ~/.shells
cp -n ~/.shells/customrc.example ~/.shells/customrc

rm -rf ~/scripts
ln -s $(pwd)/scripts ~/.scripts

ln -s $(pwd)/xresources/Xresources ~/.Xresources

sudo pacman -S yay
yay -Syu
