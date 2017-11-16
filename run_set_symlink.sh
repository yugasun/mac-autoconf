#!/usr/bin/env sh

### git usage
echo "setup git config"
ln -sf ./.gitconfig ~/.gitconfig

### Zsh usage
echo "setup zsh"
ln -sf ./.zshrc ~/.zshrc

### SSH config
ln -sf ./.ssh.config ~/.ssh/config

### Cheat sheet
ln -sf ./.cheat ~/.cheat

