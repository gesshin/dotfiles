## Welcome to my dotfiles!
These are the .config files for my MacOS rice. Also included are wallpapers that I have saved and links to my favorited artists that I get from [ArtStation](https://www.artstation.com/).

## My Applications/Packages
- **Package Manager:** homebrew
- **Terminal:** iterm2
- **Shell:** zsh + oh-my-zsh
- **Text Editor:** neovim
- **Font:**
- **Misc Programs:** neofetch, cbonsai

## Installing Dependencies
TODO: create a setup script

The script `install.sh` will install the bare minimum packages and set up the AUR helper.
The script `install_apps.sh` will install the other packages and basic applications.

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
    brew instal zsh && chsh -s $(which zsh) && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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
