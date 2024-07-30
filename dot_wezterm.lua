-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Tokyo Night Storm"
config.window_background_opacity = 0.67
config.window_decorations = "NONE"
config.font = wezterm.font("FiraCode Nerd Font", { weight = "Medium" })
config.font_size = 9
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	bottom = 24,
}
config.enable_scroll_bar = false
-- config.text_background_opacity = 0.67

-- and finally, return the configuration to wezterm
return config
