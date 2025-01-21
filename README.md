## Welcome to my dotfiles!
These are the .config files for my MacOS rice. Also included are wallpapers that I have saved and links to my favorited artists that I get from [ArtStation](https://www.artstation.com/).

## Applications/Packages
- **Package Manager:** homebrew
- **Terminal:** iterm2
- **Shell:** zsh + antidote
- **Text Editor:** neovim
- **Font:** JetBrains Mono Nerd Font
- **Misc Programs:** neofetch, cbonsai, tmux

## Installation
1. Clone repo
    ```bash
    git clone git@github:RyanEweSeng/dotfiles.git
2. Navigate to repo
    ```bash
    cd dotfiles
3. Install the apps/packages
    ```bash
    ./setup.sh
4. Ensure the `~/.config` directory exists
5. Generate symlinks
    ```bash
    stow .
6. Source the repo's `.zshrc' in `~/.zshrc`
    ```bash
    grep -qxF 'source ~/.config/zsh/.zshrc' ~/.zshrc || echo 'source ~/.config/zsh/.zshrc'

## Plugin Managers
These are some snippets for using the plugin managers.

1. When adding new zsh plugins, you will need to manually regenerate the `.zsh_plugins.sh`
   ```bash
   antidote bundle < ~/.config/zsh/.zsh_plugins.txt > ~/.config/zsh/.zsh_plugins.sh

