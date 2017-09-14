# ==============================================================================
# キーバインドの設定
#
# - bind-key
# - list-keys
# - send-keys
# - send-prefix
# - unbind-key
#
# "bind -r"はrepeat-timeで指定したミリ秒再度Prefixを押さずに入力可能にできる。
# "bind -n"はPrefix(Ctrl+t)が不要になる。
# "bind -t"はkeyはkey-table内に割り当てられる。
# ==============================================================================

# デフォルトのPrefixキーの割り当てを解除する
unbind C-b

# Ctrl+tをPrefixキーにする
set-option -g prefix C-t
bind-key C-t send-prefix

# Yで1行コピー
bind-key -T copy-mode-vi v send-keys -X begin-selection
bind-key -T copy-mode-vi y send-keys -X copy-selection
bind-key -T copy-mode-vi Y send-keys -X copy-line

# 次のウィンドウへ移動する。
unbind ^N
bind ^N next-window

# 前のウィンドウへ移動する。
unbind ^P
bind ^P previous-window

# ウィンドウの入れ替え。
bind S-Left swap-window -t -1
bind S-Right swap-window -t +1

# ウィンドウを左右のペインに分割
unbind ^H
bind ^H split-window -h

# ウィンドウを上下のペインに分割
unbind ^V
bind ^V split-window -v

# ウィンドウの作成
unbind-key ^C
bind-key ^C new-window -n zsh

# ウィンドウのローテーションはいらない
unbind-key ^O

# ウィンドウの一覧
unbind-key w
bind-key Space choose-window

# セッションの一覧
bind-key s choose-session

# ペインの番号の表示
bind-key i display-panes

# 現在選択中のペインを終了
unbind !
bind b break-pane

# ペインの移動
# Shift + 上下左右でペインを移動できるようにする。
bind -n S-left select-pane -L
bind -n S-down select-pane -D
bind -n S-up select-pane -U
bind -n S-right select-pane -R

set -g xterm-keys on

# ウィンドウ終了
unbind K
bind K confirm-before -p "kill-window #W? (y/n)" kill-window
unbind k
bind k confirm-before "kill-window"

# 全ウィンドウ終了
bind q confirm-before -p "kill-server? (y/n)" kill-server

# 設定反映
unbind r
bind r source-file ~/.tmux.conf \; display "Reloaded!"
