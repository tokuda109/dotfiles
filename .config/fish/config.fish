if command -q /opt/homebrew/bin/brew
  eval $(/opt/homebrew/bin/brew shellenv)
end

set -Ux EDITOR nvim
set -Ux VISUAL nvim

# ==============================================================================
# Alias
# ==============================================================================

alias vim "nvim"

alias la "eza --all"
alias ll "eza --all --icons --long --header"

alias g git
alias c claude

# ==============================================================================
# Path
# ==============================================================================

set -gx PATH node_modules/.bin $PATH

set -gx XDG_CONFIG_HOME $HOME/.config

# fzf
fzf --fish | source

# Go
goenv init - | source

# Node.js
nodenv init - | source

# zoxide
zoxide init fish | source

# Starship
starship init fish | source

# ==============================================================================
# GPG
# ==============================================================================

export GPG_TTY=$(tty)
