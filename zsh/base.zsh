
export EDITOR=vim

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# ディレクトリ名と一致した場合にカレントディレクトリを変更する
setopt auto_cd

# 補完候補が複数ある時に、一覧表示する
setopt auto_list

# TAB で順に補完候補を切り替える
setopt auto_menu

# カッコの対応などを自動的に補完する
setopt auto_param_keys

# ディレクトリ名の補完で末尾の / を自動的に付与
setopt auto_param_slash

# 8 ビット目を通すようにして、日本語を表示可能
setopt print_eight_bit

# ファイル名の展開でディレクトリにマッチした場合末尾に / を付与
setopt mark_dirs

# エイリアスの有効化
setopt aliases

# エイリアスも補完対象に設定
setopt complete_aliases

# beepを鳴らさないようにする
setopt nolistbeep
setopt no_beep

# エラーメッセージの本文出力に色付け
e_normal=`echo -e "\033[0;30m"`
e_RED=`echo -e "\033[1;31m"`
e_BLUE=`echo -e "\033[1;36m"`

# Viキーバインド
bindkey -v

autoload -U compinit
compinit -u
