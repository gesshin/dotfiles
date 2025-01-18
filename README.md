## Welcome to my dotfiles!
These are the .config files for my MacOS rice. Also included are wallpapers that I have saved and links to my favorited artists that I get from [ArtStation](https://www.artstation.com/).

## My Applications/Packages
- **Package Manager:** homebrew
- **Terminal:** iterm2
- **Shell:** zsh + antidote
- **Text Editor:** neovim
- **Font:** JetBrains Mono Nerd Font
- **Misc Programs:** neofetch, cbonsai

## Installing Dependencies
The script `install.sh` will install the apps/packages
The script `stow.sh` will generate the symlinks

## Manual Installation
### Main Packages
  - **Homebrew**
    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  - **iterm2**
    ```bash
    brew install --cask iterm2
  - **zsh + oh-my-zsh**
    ```bash
    brew instal zsh && chsh -s $(which zsh) && brew install antidote
  - **starship**
    ```bash
    brew install starship
  - **neovim**
    ```bash
    brew install neovim
### Misc Packages
  - neofetch
    ```bash
    brew install neofetch cbonsai
  - cbonsai
    ```bash
    brew install cbonsai

## Screenshots
TODO
