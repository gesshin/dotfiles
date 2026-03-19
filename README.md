## Welcome to my dotfiles!
These are the config files for my MacOS workspace.

## Applications/Packages
- **Package Manager:** homebrew
- **Terminal:** wezterm
- **Shell:** zsh + antidote
- **Text Editor:** neovim
- **Font:** JetBrains Mono Nerd Font
- **Tools:** `starship` `tmux` `ripgrep` `fzf` `lsd` `zoxide` `bat` `lazygit` `pass`

## Installation
Install homebrew.
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Install git.
```bash
brew install git
```
Clone repo and navigate to it.
```bash
git clone git@github.com:RyanEweSeng/dotfiles.git
cd dotfiles
```
Install the apps/packages.
```bash
./setup.sh
```
Generate symlinks.
```bash
stow .
```
Restart WezTerm and reload its config. Then, install tmux plugins and reload tmux.
```bash
Crtl + Shift + R
Crtl + a -> I
Crtl + a -> R
```

## Switching Themes
Supported themes: `dracula` `everforest` `gruvbox-material`

Change themes using:
```bash
theme [everforest|gruvbox-material]
```

Restart neovim to refresh the theme.

## Plugin Managers
These are some snippets for using the plugin managers.

When adding new zsh plugins, you will need to manually regenerate the `.zsh_plugins.zsh`.
```bash
antidote bundle < ~/.config/zsh/.zsh_plugins.txt > ~/.config/zsh/.zsh_plugins.zsh
```
When there are issues with tmux plugins, delete all folders in `~/.tmux/plugins` and source the config.
```bash
rm -rf ~/.tmux/plugins
tmux source-file ~/.config/tmux/tmux.conf
```

## Pass
I use `pass` as my preferred password & secrets manager. The setup script should already install `pass` and `gnupg`.

To initialize the password store, create a GPG key (if you don't have one). Choose RSA, 4096 bits, set an expiry, and enter your name/email.
```bash
gpg --full-generate-key
```
Find your key ID.
```bash
gpg --list-secret-keys --keyid-format LONG
sec    rsa4096/ABCD1234EFGH5678 2026-01-01
       Key fingerpirnt = ...
uid    Your Name <your@gmail.com>
```

Initialize the password store which creates `~/.password-store/`.
```bash
pass init ABCD1234EFGH5678
```
Store your secrets and retrieve them.
```bash
pass insert github/personal-pat
pass github/personal-pat
```

## Git
Github recommends using SSH to authentication git operations. You also need to add your GPG key to get verified commits.

Generate an SSH key.
```bash
ssh-keygen -t ed25519 -C "your@email.com"
```
Add to ssh-agent.
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```
Add the public key to GitHub.
```bash
pbcopy < ~/.ssh/id_ed25519.pub
```
To persist across reboots, add to `~/.ssh/config`.
```bash
Host github-personal
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519
    AddKeysToAgent yes
```
Test the connection.
```bash
ssh -T github-personal
```
(Optional) Get your GPG key ID.
```bash
gpg --list-secret-keys --keyid-format LONG
```
(Optional) Update git global config to use gpg key and signing.
```bash
git config --global user.signingkey ABCD1234EFGH5678
git config --global commit.gpgsign true
git config --global gpg.program gpg
```
(Optional) Add GPG public key to GitHub.
```bash
gpg --export --armor ABCD1234EFGH5678 | pbcopy
```

## Tmux Development Scripts
To easily spin up Tmux sessions, use the `./tmux/dev-template` file to write a script that creates a tmux session for your development environment.
Add this script to your `$PATH` so you can use the script globally.

## Neovim File Structure
```
nvim/
├── init.lua            # Entry point - sets leader key and loads core modules
├── after/
│   └── lsp/            # Per-LSP server settings, auto-loaded by lspconfig
└── lua/
    ├── core/
    │   ├── lazy.lua    # Bootstraps lazy.nvim and auto-loads lua/plugins/
    │   ├── options.lua # Vim options (tabs, search, splits, etc.)
    │   ├── keymaps/    # Keymap definitions and registration
    │   └── highlights/ # Custom highlight groups and theme palette mappings
    └── plugins/        # One file per plugin, auto-discovered by lazy.nvim
```

## LSPs and Mason
Issues with LSPs can be viewed in the `~/.local/state/nvim/lsp.log` file. When working with ruby and rbenv, Mason will use the global rbenv shim to
install the LSP.

## TODO
- [x] move to another terminal (either wezterm or kitty)
- [x] implement a way to switch themes
