# ==============================================================================
# tmuxプラグインの設定
# ==============================================================================

# set -g @plugin 'tmux-plugins/tpm'
# set -g @plugin 'tmux-plugins/tmux-resurrect'
# set -g @plugin 'tmux-plugins/tmux-continuum'
set -g @tpm_plugins '         \
  tmux-plugins/tpm            \
  tmux-plugins/tmux-battery   \
  tmux-plugins/tmux-continuum \
  tmux-plugins/tmux-resurrect \
'

run-shell '~/.tmux/plugins/tpm/tpm'
