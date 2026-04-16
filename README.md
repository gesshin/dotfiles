## Welcome to my dotfiles!
These are the config files for my MacOS workspace.

## Applications/Packages
- **Package Manager:** homebrew
- **Terminal:** wezterm
- **Shell:** zsh + antidote
- **Text Editor:** neovim
- **Font:** JetBrains Mono Nerd Font
- **Tools:** `starship` `tmux` `ripgrep` `fzf` `lsd` `zoxide` `bat` `lazygit` `fd` `pass` `gnupg` `claude`

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
stow -t ~ claude
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

## Claude Code
Claude Code stores config at `~/.claude/` and does not respect `XDG_CONFIG_HOME`, so it needs its own stow package with `-t ~`.

Custom skills live in `~/.claude/skills/` as `.md` files. Add new commands to `claude/.claude/skills/` in this repo and they will be symlinked via stow.

To add a new skill, create `claude/.claude/skills/your-skill.md` and re-run:
```bash
stow -t ~ claude
```
