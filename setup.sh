#!/bin/bash

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install dependencies
brew install git stow

# Install terminal
brew install --cask wezterm
tempfile=$(mktemp) \
  && curl -o $tempfile https://raw.githubusercontent.com/wezterm/wezterm/master/termwiz/data/wezterm.terminfo \
  && tic -x -o ~/.terminfo $tempfile \
  && rm $tempfile

# Install shell and change default shell
brew install zsh && chsh -s $(which zsh)

# Install font
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font

# Install apps
brew install starship tmux neovim ripgrep fzf lsd zoxide bat btop lazygit

# Install plugin managers
brew install antidote
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

# Add source line to ~/.zshrc
if ! grep -Fxq "source ~/.config/zsh/.zshrc" "$HOME/.zshrc"; then
  echo "source ~/.config/zsh/.zshrc" >> "$HOME/.zshrc"
fi
