local wezterm = require("wezterm")
local themes = require("themes")

local config = wezterm.config_builder()

config.colors = themes["gruvbox-material"]
config.enable_tab_bar = false
config.font = wezterm.font("JetBrainsMonoNL Nerd Font Mono")
config.font_size = 12.0
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }

return config
