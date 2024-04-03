#!/usr/bin/env bash
set -eu

echo "Installing oh my zsh"
if [ ! -d ~/.oh-my-zsh ]
then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    mkdir -p ~/.oh-my-zsh/custom/themes
    cp -r ./oh-my-zsh/custom/themes/* ~/.oh-my-zsh/custom/themes/
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

echo "Copying zshrc"
rm -rf ~/.zshrc
ln -s $(pwd)/shells/zshrc.macos ~/.zshrc

echo "Setting up vim"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

rm -rf ~/.vimrc
ln -s $(pwd)/vim/vimrc ~/.vimrc
rm -rf ~/.vim/colors
mkdir -p ~/.vim/colors
ln -s $(pwd)/vim/nord.vim ~/.vim/colors/nord.vim
git config --global core.editor "vim"

echo "Setting up git"
rm -rf ~/.gitignore_global
ln -s $(pwd)/git/gitignore_global ~/.gitignore_global
git config --global core.excludesFile ~/.gitignore_global

echo "Setting up karabiner complex modifications"
rm -rf ~/.config/karabiner/assets/complex_modifications/karabiner-config-caps-lock-hyper.json
ln -s $(pwd)/karabiner/karabiner-config-caps-lock-hyper.json ~/.config/karabiner/assets/complex_modifications/karabiner-config-caps-lock-hyper.json

echo "Installing skhd and setting it up"
brew install koekeishiya/formulae/skhd
skhd --start-service
rm -rf ~/.skhdrc
ln -s $(pwd)/macos-tiling/skhdrc-aero ~/.skhdrc

echo "Installing aerospace and setting it up"
brew install --cask nikitabobko/tap/aerospace
rm -rf ~/.aerospace.toml
ln -s $(pwd)/macos-tiling/aerospace.toml ~/.aerospace.toml

echo "Installing JankyBorders and setting it up"
brew tap FelixKratz/formulae
brew install borders
brew services start borders

echo "Installing sleepwatcher and bluetils"
brew install blueutil
brew install sleepwatcher
rm -rf ~/.sleep ~/.wakeup
ln -s $(pwd)/sleepwatcher/wakeup ~/.wakeup
ln -s $(pwd)/sleepwatcher/sleep ~/.sleep




echo "












Installation over, go to karabiner and set the hyper commands thingies in complex modifications
Run AeroSpace


"
