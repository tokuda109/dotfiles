
# 履歴を保存するファイル
HISTFILE=$HOME/.zsh_history

# メモリに展開する履歴の数
HISTSIZE=100000

# 保存する履歴の数
SAVEHIST=100000

# 同じコマンドを重複して記録しない
setopt hist_ignore_dups

# 履歴の共有 (同一ホスト内)
setopt share_history

# 入力途中の履歴補完を有効化する
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
