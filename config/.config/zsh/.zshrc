## Environment Variables #####################################
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
export TMUX_CONF="$HOME/.config/tmux/.tmux.conf"

## Plugins ###################################################
source $(brew --prefix antidote)/share/antidote/antidote.zsh

# Only generate the loader file if it doesn't exist
if [[ ! -f $HOME/.config/zsh/.zsh_plugins.sh ]]; then
  antidote bundle < $HOME/.config/zsh/.zsh_plugins.txt > $HOME/.config/zsh/.zsh_plugins.sh
fi

source $HOME/.config/zsh/.zsh_plugins.sh

## Start-up Programs #########################################
eval "$(starship init zsh)"

