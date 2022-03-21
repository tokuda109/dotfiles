# ==============================================================================
# Variables
# ==============================================================================

set -gx EDITOR nvim
set -gx GIT_EDITOR nvim

# ==============================================================================
# Alias
# ==============================================================================

alias la "exa --all"
alias ll "exa --long --header"
alias lla "ll --all"

# ==============================================================================
# Path
# ==============================================================================

set -gx PATH node_modules/.bin "$PATH"

# gcloud
if test -d $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk
  set -gx GCLOUD_ROOT_PATH $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk
end
if test -f "$GCLOUD_ROOT_PATH/path.fish.inc"
  source "$GCLOUD_ROOT_PATH/path.fish.inc"
end