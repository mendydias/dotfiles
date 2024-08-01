-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "OneHalfLight"
config.window_background_opacity = 0.67
config.window_decorations = "NONE"
config.font = wezterm.font("FiraCode Nerd Font", { weight = "Medium" })
config.font_size = 11
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 8,
	right = 8,
	top = 8,
	bottom = 8,
}
config.enable_scroll_bar = false
config.use_fancy_tab_bar = false
-- config.text_background_opacity = 0.67

-- and finally, return the configuration to wezterm
return config
