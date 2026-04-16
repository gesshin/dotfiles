#!/bin/bash

# Install dependencies
brew install stow

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
brew install starship tmux neovim ripgrep fzf lsd zoxide bat lazygit fd pass gnupg
brew install --cask claude-code

# Install languages
brew install go lua node

# Install plugin managers
brew install antidote
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

# Add source line to ~/.zshenv
if ! grep -Fxq "source ~/.config/zsh/.zshenv" "$HOME/.zshenv"; then
  echo "source ~/.config/zsh/.zshenv" >> "$HOME/.zshenv"
fi

# Add source line to ~/.zshrc
if ! grep -Fxq "source ~/.config/zsh/.zshrc" "$HOME/.zshrc"; then
  echo "source ~/.config/zsh/.zshrc" >> "$HOME/.zshrc"
fi
