#!/bin/bash

aurman -S i3
aurman -S i3lock-color-git
aurman -S lightdm-slick-greeter lightdm-mini-greeter
sudo mv /etc/lightdm/slick-greeter.conf /etc/lightdm/slick-greeter.conf.bak
# dont ln because boot stuff
sudo cp $(pwd)/greeter/slick-greeter.conf /etc/lightdm/slick-greeter.conf
sudo mv /etc/lightdm/lightdm-mini-greeter.conf /etc/lightdm/lightdm-mini-greeter.conf.bak
# dont ln because boot stuff
sudo cp $(pwd)/greeter/lightdm-mini-greeter.conf /etc/lightdm/lightdm-mini-greeter.conf
sudo sed -i s/lightdm-webkit2-greeter/lightdm-mini-greeter/ /etc/lightdm/lightdm.conf
sudo sed -i s/user-session=gnome/user-session=i3/ /etc/lightdm/lightdm.conf

aurman -S zsh
aurman -S zsh-autosuggestions
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
rm ~/.oh-my-zsh/custom -rf
ln -s $(pwd)/oh-my-zsh/custom ~/.oh-my-zsh/custom
sed -i s/robbyrussell/simple_custom/ ~/.zshrc

aurman -S feh

aurman -S scrot

aurman -S rofi-git

aurman -S xautolock

aurman -S compton

aurman -S xbacklight

aurman -S playerctl

aurman -S terminator

aurman -S vim vim-youcompleteme-git
git config --global core.editor "vim"

aurman -S otf-font-awesome ttf-roboto ttf-roboto-mono

aurman -S arandr

echo "








You still have to:
- add gesturefy to firefox
- change the greeter
- add dotfile sourcing and config to zsh
- change stuff in /usr/share/i3blocks
- add fonts to ~/.gtk-2.0 and ~/.config/gtk-3.0/settings.ini
- add different utilities like dropbox/telegram/cloudstation/spotify
"
