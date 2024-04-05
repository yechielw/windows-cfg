-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0
config.window_background_opacity = 0.97
config.default_prog = { "wsl", "tmux", "a" }
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

return config
