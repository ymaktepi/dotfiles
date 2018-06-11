#!/bin/bash

aurman -S i3
aurman -S i3lock-color-git

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

aurman -S xbackligh

aurman -S playerctl

aurman -S terminator

aurman -S vim

aurman -S ttf-font-awesome-4
aurman -S ttf-roboto
aurman -S ttf-roboto-mono

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
