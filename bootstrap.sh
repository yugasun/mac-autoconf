#!/usr/bin/env sh

echo "Start mac develop environment auto configuration..."

echo "++++++++ installing Homebrew https://brew.sh ++++++++"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "++++++++ installing basic tools ++++++++"
brew install zsh zsh-completions autojump curl git tig

echo "++++++++ installing oh-my-zsh https://github.com/robbyrussell/oh-my-zsh ++++++++"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "+++++++++ Set up dotfiles ++++++++"
bash ./run_set_symlink.sh
