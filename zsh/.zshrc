ZSH_CFG_DIR=$HOME/dot/zsh
ZSH_PLUGIN_DIR=$HOME/dot/zsh/plugins

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -al'

# load module functions
cfg_modules=(
    ${ZSH_PLUGIN_DIR}/zsh-autosuggestions/zsh-autosuggestions.zsh
)

for cfg_module ($cfg_modules) {
    source $cfg_module;
}

# Point to config file, default is ~/.config/starship.toml
export STARSHIP_CONFIG=${ZSH_CFG_DIR}/starship.toml
# Load prompt
eval "$(starship init zsh)"
