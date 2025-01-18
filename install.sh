#!bin/bash

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install terminal
brew install --cask iterm2

# Install shell and change default shell and plugin manager
brew install zsh && chsh -s $(which zsh) && brew install antidote

# Install font
brew install --cask font-jetbrains-mono-nerd-font

# Install apps
brew install neovim starship tmux

# Install tools
brew install stow neofetch cbonsai

