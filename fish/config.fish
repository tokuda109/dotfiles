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

# gcloud
if test -d $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk
  set -gx GCLOUD_ROOT_PATH $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk
end
if test -f "$GCLOUD_ROOT_PATH/path.fish.inc"
  source "$GCLOUD_ROOT_PATH/path.fish.inc"
end

# Node.js
eval (nodenv init - | source)

# ==============================================================================
# Prompt
# ==============================================================================

function fish_prompt
  printf "%s" (set_color normal)(prompt_pwd) (set_color $fish_color_cwd) " ~> " (set_color normal)
end

function fish_right_prompt
  printf "%s" (fish_git_prompt)
end

# ==============================================================================
# Exa
# ==============================================================================

# Exa Colors
set -gx EXA_COLORS "fi=36:sn=0:sb=0:uu=0:un=0:da=0"
