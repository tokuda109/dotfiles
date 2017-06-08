
function fzf-vim-file() {
  local file
  file=$(fzf --query="$1") && vim "$file"
}
zle -N fzf-vim-file
bindkey '^v' fzf-vim-file

function fzf-git-branch() {
}
zle -N fzf-git-branch
bindkey '^b' fzf-git-branch

function fzf-history() {
}
