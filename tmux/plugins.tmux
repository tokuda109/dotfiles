# ==============================================================================
# tmuxプラグインの設定
# ==============================================================================

set-option -g @plugin 'tmux-plugins/tpm'
set-option -g @plugin 'tmux-plugins/tmux-resurrect'
set-option -g @plugin 'tmux-plugins/tmux-resurrect-auto'

run '~/.tmux/plugins/tpm/tpm'
