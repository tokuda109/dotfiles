
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH

eval "$(pyenv init -)"

export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# 実行時に.py[co]を生成しないようにする
export PYTHONDONTWRITEBYTECODE=1

# 標準入出力のエンコーディングをutf8にする
export PYTHONIOENCODING=utf8
