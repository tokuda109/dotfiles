# ==============================================================================
# Variables
# ==============================================================================

set -gx EDITOR nvim
set -gx GIT_EDITOR nvim

# ==============================================================================
# Alias
# ==============================================================================

alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"

# ==============================================================================
# Path
# ==============================================================================

set -gx PATH node_modules/.bin "$PATH"
