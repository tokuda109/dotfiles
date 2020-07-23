# ==============================================================================
# 基本設定
# ==============================================================================

# Escを打ったあとの待ち時間。
# http://qiita.com/catatsuy/items/db0a471bf1eabaa21c36
# http://ymizushi.hateblo.jp/entry/2017/08/27/222932
set-option -s escape-time 10

# コピー、選択モードのキーバインドをviにする。
set-window-option -g mode-keys vi

# デフォルトのシェルを設定する。
set-option -g default-shell /usr/local/bin/zsh

# デフォルトの端末を設定する。
set-option -g default-terminal "screen-256color"
set-option -g terminal-overrides 'xterm:colors=256'

# 実行しているコマンド名で自動的にウィンドウにリネームして表示しないようにする。
set-window-option -g automatic-rename off

# バックログの行数
set-option -g history-limit 10000

# ペーストバッファの行数
set-option -g buffer-limit 20

# 指定したミリ秒(デフォルトは500), プレフィックスキーを押さずに入力することができます。
# キーを割り当てるときに"bind-key -r"で指定するするとキーリピートが適用される。
set-option -g repeat-time 1000

# マウスの設定
set-option -g mouse on
