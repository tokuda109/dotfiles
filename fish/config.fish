# ==============================================================================
# Variables
# ==============================================================================

set -gx EDITOR nvim
set -gx GIT_EDITOR nvim

# ==============================================================================
# Alias
# ==============================================================================

alias la "exa --all --icons"
alias ll "exa --all --icons --long --header"

# ==============================================================================
# Path
# ==============================================================================

set -gx PATH node_modules/.bin "$PATH"
set -gx XDG_CONFIG_HOME "$HOME/.config"

# gcloud
if test -d $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk
  set -gx GCLOUD_ROOT_PATH $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk
end
if test -f "$GCLOUD_ROOT_PATH/path.fish.inc"
  source "$GCLOUD_ROOT_PATH/path.fish.inc"
end

# Node.js
nodenv init - | source

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

# ==============================================================================
# Exa
# ==============================================================================

# Exa Colors
set -gx EXA_COLORS "fi=36:sn=0:sb=0:uu=0:un=0:da=0"
