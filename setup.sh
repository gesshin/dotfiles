#!bin/bash

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install terminal
brew install --cask iterm2

# Install shell and change default shell
brew install zsh && chsh -s $(which zsh)

# Install font
brew install --cask font-jetbrains-mono-nerd-font

# Install apps
brew install starship tmux neovim

# Install tools
brew install stow neofetch cbonsai

# Install plugin managers
brew install antidote
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
