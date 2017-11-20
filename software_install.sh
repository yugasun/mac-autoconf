#!/usr/bin/env sh

echo "++++++++ installing brew cask https://github.com/caskroom/homebrew-cask ++++++++"
brew tap caskroom/cask

echo "++++++++ installing brew-cask-upgrade https://github.com/buo/homebrew-cask-upgrade ++++++++"
brew tap buo/cask-upgrade

echo "++++++++ installing mac softwares  ++++++++"
brew cask install iterm2 shadowsocksx-ng google-chrome visual-studio-code spectacle docker macdown mailmaster qq tunnelblick