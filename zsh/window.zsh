
function title() {
  a=${(V)1//\%/\%\%}

  a=$(print -Pn "%40>...>$a" | tr -d "\n")

  print -Pn "\ek$a:$3\e\\"
}
