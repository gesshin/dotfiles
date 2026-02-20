# Aliases
alias cd="z"
alias ls="lsd"
alias cat="bat"
alias vi="nvim"

alias srczsh="source $HOME/.zshenv && source $HOME/.zshrc"
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
alias gfo="git fetch origin"
alias gph="git_push"
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
  local VALID_THEMES=("dracula" "everforest")

  if [[ -z "$1" || ! " ${VALID_THEMES[@]} " =~ " $1 " ]]; then
    echo "Usage: theme [dracula|everforest]"
    return 1
  fi

  sed -i '' "s/export GLOBAL_THEME=\".*\"/export GLOBAL_THEME=\"$1\"/" "$XDG_CONFIG_HOME/zsh/.zshenv"
  sed -i '' "s|themes/[^.]*\.conf|themes/$1.conf|" "$XDG_CONFIG_HOME/tmux/tmux.conf"
  sed -i '' "s/themes\['[^']*'\]/themes['$1']/" "$XDG_CONFIG_HOME/wezterm/wezterm.lua"
  sed -i '' "s/palette = '[^']*'/palette = '$1'/" "$XDG_CONFIG_HOME/starship/starship.toml"

  source "$XDG_CONFIG_HOME/zsh/.zshenv"
  tmux source-file "$XDG_CONFIG_HOME/tmux/tmux.conf" 2>/dev/null

  echo "Theme switched to $1"
  echo "Note: restart nvim to apply"
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

# Plugins
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load $XDG_CONFIG_HOME/zsh/.zsh_plugins.txt

# Start-up Programs
[ -z "$TMUX" ] && tmux new-session -A -s main
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
