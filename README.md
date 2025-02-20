## Welcome to my dotfiles!
These are the config files for my MacOS workspace.

## Applications/Packages
- **Package Manager:** homebrew
- **Terminal:** wezterm
- **Shell:** zsh + antidote
- **Text Editor:** neovim
- **Font:** JetBrains Mono Nerd Font
- **Tools:** `starship` `tmux` `ripgrep` `fzf` `lsd` `zoxide` `bat` `lazygit`

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
5. Add these lines to `~/.zshrc` and `~/.zshenv` respectively
   ```bash
   source $HOME/.config/zsh/.zshrc
   source $HOME/.config/zsh/.zshenv
   ```

## Switching Themes
Supported themes: `dracula` `everforest`
1. Import the themes from the `iterm2` directory
2. Update `GLOBAL_THEME` in `.zshenv`
3. Source `~/.zshrc`

## Plugin Managers
These are some snippets for using the plugin managers.

- When adding new zsh plugins, you will need to manually regenerate the `.zsh_plugins.zsh`
  ```bash
  antidote bundle < ~/.config/zsh/.zsh_plugins.txt > ~/.config/zsh/.zsh_plugins.zsh
  ```
- When there are issues with tmux plugins, delete all folders in `~/.tmux/plugins` and run
  ```bash
  tmux source-file ~/.config/tmux/tmux.conf
  ```

## TODO
- [x] move to another terminal (either wezterm or kitty)
- [ ] implement a way to switch themes
- [ ] figure out how to configure `bat` and `fzf` themes
