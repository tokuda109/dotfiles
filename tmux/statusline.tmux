# ==============================================================================
# ステータスライン
#
# 参考URL: https://github.com/seebi/tmux-colors-solarized
# ==============================================================================

set-option -g status on

set-option -g status-utf8 on

# ステータス行の更新間隔
set-option -g status-interval 2

set-option -g status-justify "left"

set-option -g window-status-current-attr bold
set-option -g window-status-current-fg colour180
set-option -g window-status-current-bg colour0

# アクティブなペイン
set-option -g pane-active-border-fg colour180
set-option -g pane-active-border-bg colour0

# ステータスライン - 全般
set-option -g status-attr bold
set-option -g status-fg white
set-option -g status-bg black

# ステータス行 - 左側
set-option -g status-left-fg default
set-option -g status-left-bg default
set-option -g status-left "🐍 #(whoami)@#(hostname -s) "
# 表示領域の最大長
set-option -g status-left-length 50

# ステータス行 - 右側
set-option -g status-right-fg default
set-option -g status-right-bg default
set-option -g status-right "Mem: #(~/dotfiles/bin/memory) %y/%m/%d(%a)%H:%M"
# 表示領域の最大長
set-option -g status-right-length 100
