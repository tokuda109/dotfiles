
export MANPATH=/usr/local/share/man:$MANPATH

if [[ -d "${HOME}/.fastlane" ]]; then
  export PATH=$HOME/.fastlane/bin:$PATH
fi
