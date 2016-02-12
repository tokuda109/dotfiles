
# 実行時に.py[co]を生成しないようにする
export PYTHONDONTWRITEBYTECODE=1

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  source /usr/local/bin/virtualenvwrapper.sh
fi
