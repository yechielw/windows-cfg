-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}




if wezterm.config_builder then
  config = wezterm.config_builder()
end




config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 14.0
config.window_background_opacity = 0.9
config.default_prog = {'wsl','tmux','a'}
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

return config
