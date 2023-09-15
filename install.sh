#!/bin/sh

# ------------------------------------------------------------------------------
#  Configurations.
# ------------------------------------------------------------------------------

DOTFILES=$HOME/Code/dotfiles

echo "Setting up your Mac..."

# ------------------------------------------------------------------------------
#  Install Brew and its dependencies.
# ------------------------------------------------------------------------------

if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
brew tap homebrew/bundle
brew bundle

# ------------------------------------------------------------------------------
#  GPG Agent. Avoid having to enter the paraphrase all the time.
# ------------------------------------------------------------------------------

echo "pinentry-program /opt/homebrew/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
killall gpg-agent

# ------------------------------------------------------------------------------
#  Global shell configurations.
# ------------------------------------------------------------------------------

# Prepare NVM config folder.
mkdir -p ~/.nvm

# Use global .gitignore file.
git config --global core.excludesfile $DOTFILES/.gitignore_global

# install oh-my-zsh
/bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Use zsh as default shell.
chsh -s $(which zsh)

# ------------------------------------------------------------------------------
#  Install Composer dependencies.
# ------------------------------------------------------------------------------

composer global require laravel/installer
composer global require statamic/cli
