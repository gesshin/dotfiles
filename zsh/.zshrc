# Environment Variables
export XDG_CONFIG_HOME="$HOME/.config"
export TMUX_CONF="$HOME/.config/tmux/tmux.conf"
export BAT_THEME="Dracula"
export FZF_DEFAULT_OPTS="
  --color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 \
  --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 \
  --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 \
  --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4"

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

# Plugins
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load $XDG_CONFIG_HOME/zsh/.zsh_plugins.txt

# Start-up Programs
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
