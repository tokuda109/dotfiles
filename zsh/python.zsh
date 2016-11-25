
export PATH=$PYENV_ROOT/bin:$PATH

export PYTHONPATH=$(brew --prefix)/lib/python2.7/site-packages

export PYENV_VIRTUALENV_DISABLE_PROMPT=1

eval "$(pyenv init -)"

# 実行時に.py[co]を生成しないようにする
export PYTHONDONTWRITEBYTECODE=1
