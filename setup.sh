#!bin/bash

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install dependencies
brew install git stow tree ripgrep

# Install terminal
brew install --cask iterm2

# Install shell and change default shell
brew install zsh && chsh -s $(which zsh)

# Install font
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font

# Install apps
brew install starship tmux neovim neofetch cbonsai

# Install plugin managers
brew install antidote
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
