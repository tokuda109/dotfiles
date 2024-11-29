local wezterm = require("wezterm")

local config = wezterm.config_builder()
config.automatically_reload_config = true

config.color_scheme = "Tokyo Night"

config.font_size = 13.0
config.use_ime = true

config.window_decorations = "RESIZE"
config.show_tabs_in_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.window_close_confirmation = "NeverPrompt"

config.default_prog = { "/usr/local/bin/tmux" }

return config
