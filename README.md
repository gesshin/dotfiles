## Welcome to my dotfiles!
These are the config files for my MacOS workspace and rice.

## Applications/Packages
- **Package Manager:** homebrew
- **Terminal:** iterm2
- **Shell:** zsh + antidote
- **Text Editor:** neovim
- **Font:** JetBrains Mono Nerd Font
- **Misc Programs:** starship, tmux, ripgrep, fzf, lsd, zoxide, bat, lazygit

## Installation
1. Clone repo
   ```bash
   git clone git@github:RyanEweSeng/dotfiles.git
   ```
2. Navigate to repo
   ```bash
   cd dotfiles
   ```
3. Install the apps/packages
   ```bash
   ./setup.sh
   ```
4. Generate symlinks
   ```bash
   stow .
   ```

## Plugin Managers
These are some snippets for using the plugin managers.

- When adding new zsh plugins, you will need to manually regenerate the `.zsh_plugins.zsh`
  ```bash
  antidote bundle < ~/.config/zsh/.zsh_plugins.txt > ~/.config/zsh/.zsh_plugins.sh
  ```
- When there are issues with tmux pliugins, delete all folders in `~/.tmux/plugins` and run
  ```bash
  tmux source-file ~/.config/tmux/tmux.conf
  ```
