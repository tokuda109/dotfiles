
fco() {
  local tags branches target

  git checkout $(echo "$target" | awk '{print $2}')
}

fd() {
  local dir

  dir=$(find ${1:-*} -path '*/\.*' -prune \
    -o -type d -print 2> /dev/null | fzf-tmux) &&
    cd "$dir"
}

fe() {
  local file
  file=$(fzf-tmux --query="$1" --select-1 --exit-0)
  [ -n "$file" ] && ${EDITOR:-vim} "$file"
}
