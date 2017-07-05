
export MANPATH=/usr/local/share/man:$MANPATH

export PATH=/usr/local/opt/opencv3/bin:$PATH
export PATH=node_modules/.bin:$PATH

if [[ -d "${HOME}/.fastlane" ]]; then
  export PATH=$HOME/.fastlane/bin:$PATH
fi
