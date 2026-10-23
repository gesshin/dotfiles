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

# Install apps (neovim 0.12+ is required for the built-in vim.pack plugin manager)
# tree-sitter-cli builds the nvim-treesitter parsers, which also need a C compiler (xcode-select --install)
brew install starship tmux neovim ripgrep fzf lsd zoxide bat lazygit fd pass gnupg tree-sitter-cli
brew install --cask claude-code

# Install language servers and formatters (neovim enables the servers in nvim/lua/plugins/lspconfig.lua)
brew install lua-language-server vscode-langservers-extracted yaml-language-server typescript-language-server basedpyright ruff prettier stylua
if command -v rbenv > /dev/null; then
  gem install ruby-lsp rubocop
fi

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
