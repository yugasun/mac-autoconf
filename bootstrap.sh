#!/usr/bin/env sh

echo "Start mac develop environment auto configuration..."

echo "++++++++ installing Homebrew https://brew.sh ++++++++"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "++++++++ installing basic tools ++++++++"
brew install zsh zsh-completions autojump curl git tig

echo "++++++++ installing brew cask https://github.com/caskroom/homebrew-cask ++++++++"
brew tap caskroom/cask

echo "++++++++ installing oh-my-zsh https://github.com/robbyrussell/oh-my-zsh ++++++++"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "++++++++ installing nvm https://github.com/creationix/nvm ++++++++"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

echo "++++++++ Load nvm ++++++++"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

echo "++++++++ installing node ++++++++"
nvm install stable

echo "++++++++ installing yarn https://github.com/yarnpkg/yarn ++++++++"
brew install yarn --without-node # because use nvm to manage node version

echo "+++++++++ Generate SSH key ++++++++"
ssh-keygen -t rsa -b 4096 -C "yuga.sun.bj@gmail.com"

echo "++++++++ installing mac softwares  ++++++++"
brew cask install iterm2 shadowsocksx-ng google-chrome visual-studio-code spectacle macdown

echo "+++++++++ Set up dotfiles ++++++++"
bash ./run_set_symlink.sh