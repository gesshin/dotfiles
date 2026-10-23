# Dotfiles

macOS dotfiles managed with GNU Stow. See `README.md` for setup and per-app details.

## Layout and stow
- `.stowrc` sets the stow target to `~/.config`. Running `stow .` symlinks each top-level directory (`nvim`, `zsh`, `tmux`, `wezterm`, `starship`, `lazygit`) to `~/.config/<dir>`.
- A new top-level directory is symlinked automatically. If it should not be (docs, scripts), add `--ignore=<name>` to `.stowrc`.
- `claude/` is ignored by `.stowrc` and stowed separately with `stow -t ~ claude`. It holds only `.claude/settings.json`. Treat that file as the user's live config.
- The `~/.config/<dir>` entries are symlinks into this repo, so editing either path edits the repo file.
- Zsh is loaded through source lines that `setup.sh` adds to `~/.zshenv` and `~/.zshrc`. Edit the files in `zsh/`.

## Conventions
- **Neovim:** requires 0.12+ and uses the built-in `vim.pack`, with one file per plugin in `nvim/lua/plugins/`. A new plugin needs a file there that calls `vim.pack.add()` with a pinned `version`, *and* an entry in the ordered list in `nvim/lua/core/pack.lua`. Plugins load at startup, with no lazy loading. Lua is formatted with stylua via conform. To bump a plugin, change `version` in its file, then run `vim.pack.update({ "<name>" })` and confirm; the README has the full workflow. Do not hand-edit `nvim/nvim-pack-lock.json`.
- **Treesitter:** parsers are listed in `nvim/lua/plugins/treesitter.lua`. A `FileType` autocmd starts highlighting and indent per buffer. The plugin does not support lazy loading.
- **Colors:** there is no theme switcher. Palettes are constants in `nvim/lua/core/highlights/themes.lua`, `wezterm/themes.lua`, `tmux/themes/*.conf` and `starship/starship.toml`. The active theme is a hardcoded name in each app's config; the README lists exactly where. Keep the palette color names consistent across apps.
- **Generated, git-ignored:** `zsh/.zsh_plugins.zsh`. Regenerate it with the `antidote bundle` command in the README. Edit `zsh/.zsh_plugins.txt` instead.
- **Commits:** Conventional Commits, `type(scope): lowercase message`, e.g. `feat(starship): add virtual env for python`, `fix(neovim): set rounded border`, `refactor(theme): ...`.

## Verifying changes
- `stow -n -v .` for a dry run of the symlinks. It must not report conflicts.
- `zsh -n zsh/.zshrc` for a shell syntax check.
- `nvim --headless "+qa"` to catch Lua errors on startup.
- `tmux source-file ~/.config/tmux/tmux.conf` to reload tmux.
- Visual changes (colors, status line) cannot be verified headlessly. Ask the user to check them.

## Cautions
- This repo is the user's live configuration. Do not run `stow` without `-n` unless asked.
- Do not install, remove or upgrade packages (`brew`, Mason) unless asked.
- Never commit secrets. `pass` and `gnupg` hold credentials outside this repo.
