#!/usr/bin/env sh

### git usage
echo "setup git config"
ln -sf ~/mac-autoconfig/.gitconfig ~/.gitconfig

### Zsh usage
echo "setup zsh"
ln -sf ~/mac-autoconfig/.zshrc ~/.zshrc

### SSH config
ln -sf ~/mac-autoconfig/.ssh.config ~/.ssh/config

### Cheat sheet
ln -sf ~/mac-autoconfig/.cheat ~/.cheat

### npm config
ln -sf ~/mac-autoconfig/.npmrc ~/.npmrc
