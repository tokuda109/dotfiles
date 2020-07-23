# ==============================================================================
# ステータスライン
#
# 参考URL: https://github.com/seebi/tmux-colors-solarized
# ==============================================================================

set-option -g status on

# ステータス行の更新間隔
set-option -g status-interval 1

set-option -g status-justify "left"

set-option -g window-status-current-style fg="colour180,bold"

set-window-option -g window-status-format "#[fg=colour255,bg=colour238][#I: #W]#[default]"
set-window-option -g window-status-current-format "#[fg=colour0,bg=colour220,bold][#I: #W]#[default]"

# アクティブなペイン
set-option -g pane-active-border-style fg="colour180"

# ステータスライン - 全般
set-option -g status-style fg="colour255"

# ステータス行 - 左側
set-option -g status-left-style fg="default"
set-option -g status-left "#(whoami)@#(hostname -s):"
# 表示領域の最大長
set-option -g status-left-length 120

# ステータス行 - 右側
set-option -g status-right-style fg="default"
set-option -g status-right "%y/%m/%d (%a) %H:%M"
# 表示領域の最大長
set-option -g status-right-length 50
