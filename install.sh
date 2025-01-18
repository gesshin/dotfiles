#!bin/bash

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install terminal
brew install --cask iterm2

# Install shell and change default shell
brew install zsh && chsh -s $(which zsh) && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install font
brew install --cask font-jetbrainsmono-nerd-font

# Install apps
brew install neovim starship

# Install tools
brew install stow

