# Environment Variables
export XDG_CONFIG_HOME="$HOME/.config"
export WEZTERM_CONFIG_FILE="$XDG_CONFIG_HOME/wezterm/wezterm.lua"
export TMUX_CONF="$XDG_CONFIG_HOME/tmux/tmux.conf"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# Theme
export GLOBAL_THEME="everforest"
sed -i '' "s/palette = '.*'/palette = '${GLOBAL_THEME}'/g" $XDG_CONFIG_HOME/starship/starship.toml
tmux source-file $XDG_CONFIG_HOME/tmux/themes/$GLOBAL_THEME.conf

# Aliases
alias cd="z"
alias ls="lsd"
alias cat="bat"
alias gh="lazygit"
alias vi="nvim"

alias zsh="source $HOME/.zshrc"
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
alias gco="git checkout"
alias gph="git push"
alias gpl="git pull"
alias gf="git fetch"
alias gm="git merge"

alias tn="tmux new-session -s"
alias ta="tmux attach -t"
alias td="tmux detach"
alias tl="tmux ls"
alias tx="tmux kill-session -t"

# Plugins
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load $XDG_CONFIG_HOME/zsh/.zsh_plugins.txt

# Start-up Programs
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
