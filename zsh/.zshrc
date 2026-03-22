# Aliases
alias cd="z"
alias ls="lsd"
alias cat="bat"
alias vi="nvim"

alias sz="source $HOME/.zshenv && source $HOME/.zshrc"
alias e="vi $XDG_CONFIG_HOME/zsh/.zshrc"
alias c="clear"

alias ..="cd .."
alias ~="cd ~"

alias ll="ls -la"
alias lt="ls --tree"

alias gs="git status"
alias gl="git log --oneline"
alias ga="git add"
alias gr="git restore"
alias grs="git restore --staged"
alias gcm="git commit -m"
alias gd="git diff"
alias gbl="git branch -l"
alias gbD="git branch -D"
alias gbm="git branch -m"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gf="git fetch"
alias gph="git_push"
alias gphf="git push --force-with-lease origin HEAD"
alias gpl="git pull"
alias gm="git merge"
alias grb="git rebase"

alias tn="tmux new-session -s"
alias ta="tmux attach -t"
alias td="tmux detach"
alias tl="tmux ls"
alias tx="tmux kill-session -t"

alias dcu="docker compose up"
alias dcd="docker compose down"
alias dcb="docker compose build"
alias dce="docker compose exec"
alias dca="docker compose attach"

# Functions
theme() {
  local VALID_NAMES=("everforest" "gruvbox-material")
  local name=$1

  if [[ -z $name || ! " ${VALID_NAMES[@]} " =~ " $name " ]]; then
    echo "Usage: theme [everforest|gruvbox-material]"
    return 1
  fi

  sed -i '' "s|export GLOBAL_THEME=\".*\"|export GLOBAL_THEME=\"$name\"|" "$XDG_CONFIG_HOME/zsh/.zshenv"
  sed -i '' "s|themes/[^.]*\.conf|themes/$name.conf|" "$XDG_CONFIG_HOME/tmux/tmux.conf"
  sed -i '' "s|themes\['[^']*'\]|themes['$name']|" "$XDG_CONFIG_HOME/wezterm/wezterm.lua"
  sed -i '' "s|palette = '[^']*'|palette = '$name'|" "$XDG_CONFIG_HOME/starship/starship.toml"

  source "$XDG_CONFIG_HOME/zsh/.zshenv"
  tmux source-file "$XDG_CONFIG_HOME/tmux/tmux.conf" 2>/dev/null

  echo "Theme switched to $name"
}

git_push() {
  if [[ $# -gt 1 ]]; then
    echo "Usage: gph [branch]"
    return 1
  fi

  if [[ $# -eq 0 ]]; then
    git push
  else
    git push --set-upstream origin "$1"
  fi
}

# Keybinds
bindkey -v
bindkey '^e' autosuggest-accept
bindkey '^n' history-search-forward
bindkey '^p' history-search-backward

# Options
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Plugins
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load $XDG_CONFIG_HOME/zsh/.zsh_plugins.txt

# Start-up Programs
[ -z "$TMUX" ] && tmux new-session -A -s main
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
