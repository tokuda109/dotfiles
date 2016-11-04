
export PATH=$PYENV_ROOT/bin:$PATH

export PYTHONPATH=$(brew --prefix)/lib/python2.7/site-packages

eval "$(pyenv init -)"

# 実行時に.py[co]を生成しないようにする
export PYTHONDONTWRITEBYTECODE=1
