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

## Colorschemes
Palettes defined in this repo: `dracula` `everforest` `gruvbox-material`.
Every app uses the same color names: `bg` `fg` `line` `comment` `red` `orange` `yellow` `green` `blue` `purple` `pink`.

### Changing the active colorscheme
Change the name in each of these places, then reload:

| App      | File                                | Change                                      |
|----------|-------------------------------------|---------------------------------------------|
| Neovim   | `nvim/lua/core/highlights/init.lua` | `local theme = "<name>"`                    |
| WezTerm  | `wezterm/wezterm.lua`               | `config.colors = themes["<name>"]`          |
| tmux     | `tmux/tmux.conf`                    | `source-file ".../tmux/themes/<name>.conf"` |
| Starship | `starship/starship.toml`            | `palette = '<name>'`                        |

Reload with: restart neovim, `Ctrl + Shift + R` in WezTerm, `Ctrl + a -> R` in tmux, open a new shell for Starship.

### Adding a new colorscheme
1. **Neovim**
   - Add the colorscheme plugin to `nvim/lua/plugins/colorscheme.lua`. Its `:colorscheme` name must match `<name>`.
   - Add a `M["<name>"]` palette to `nvim/lua/core/highlights/themes.lua`. It needs the base colors plus `bg_red` `bg_green` `bg_yellow` `bg_blue`, which `mappings.lua` uses.
2. **WezTerm**: add `M["<name>"]` to `wezterm/themes.lua` with `background`, `foreground`, the `cursor_*` keys, and 8-color `ansi` and `brights` lists.
3. **tmux**: copy an existing file in `tmux/themes/` to `<name>.conf` and replace the `status-bg` and `@<color>` values.
4. **Starship**: add a `[palettes.<name>]` table to `starship/starship.toml`.
5. Follow the steps in "Changing the active colorscheme" above.

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

Only `claude/.claude/settings.json` is tracked. Everything else in `~/.claude/` is runtime state and stays untracked.

Skills come from the [superpowers](https://github.com/obra/superpowers#installation) plugin. Follow its install instructions.
