
fco() {
  local tags branches target

  git checkout $(echo "$target" | awk '{print $2}')
}

fe() {
  local file
  file=$(fzf-tmux --query="$1" --select-1 --exit-0)
  [ -n "$file" ] && ${EDITOR:-vim} "$file"
}
