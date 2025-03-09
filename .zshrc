#zsh config

eval "$(starship init zsh)"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"
neofetch
alias ls='exa --icons'
bindkey '^' autosuggest-accept

#PLUGINS
source ~/scripts/zsh-syntax-highlighting_/zsh-syntax-highlighting.zsh
source ~/scripts/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/scripts/autojump/autojump.zsh

