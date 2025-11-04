if command -q /opt/homebrew/bin/brew
  eval $(/opt/homebrew/bin/brew shellenv)
end

# ==============================================================================
# Fish shell config
# ==============================================================================

set -U fish_greeting # disable fish greeting
set -U fish_key_bindings fish_vi_key_bindings

if test -f "$FISH_FUNCTION_PATH/fisher.fish"
  source "$FISH_FUNCTION_PATH/fisher.fish"
end

# ==============================================================================
# GPG
# ==============================================================================

export GPG_TTY=$(tty)

# ==============================================================================
# Editor config
# ==============================================================================

set -Ux EDITOR nvim
set -Ux VISUAL nvim

# ==============================================================================
# Alias
# ==============================================================================

alias vim "nvim"

alias la "eza --all --icons"
alias ll "eza --all --icons --long --header"

# ==============================================================================
# Path
# ==============================================================================

set -gx PATH node_modules/.bin "$PATH"
set -gx XDG_CONFIG_HOME "$HOME/.config"

# gcloud
if test -d $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk
  set -Ux GCLOUD_ROOT_PATH $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk
end
if test -f "$GCLOUD_ROOT_PATH/path.fish.inc"
  source "$GCLOUD_ROOT_PATH/path.fish.inc"
end

# Go
goenv init - | source

# Node.js
nodenv init - | source

# Python
pyenv init - | source

# zoxide
zoxide init fish | source

# ==============================================================================
# Color
# ==============================================================================

set fish_color_normal  brwhite
set fish_color_command brwhite

# ==============================================================================
# Starship
# ==============================================================================

starship init fish | source
