#!/usr/bin/env sh

echo "++++++++ installing nvm https://github.com/creationix/nvm ++++++++"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

echo "++++++++ Load nvm ++++++++"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

echo "++++++++ installing node ++++++++"
nvm install stable

echo "++++++++ installing yarn https://github.com/yarnpkg/yarn ++++++++"
brew install yarn --without-node # because use nvm to manage node version
