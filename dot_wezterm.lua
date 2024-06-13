-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'nord'
config.colors = {
	cursor_bg='white',
	cursor_fg='black',
	compose_cursor='orange'
}
-- config.window_background_opacity=0.85
config.window_decorations = "RESIZE"
config.font = wezterm.font('JetBrainsMono Nerd Font', {weight='Bold'})
config.font_size = 16
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
  left = 8,
  right = 8,
  top = 8,
  bottom = 8,
}
config.text_background_opacity = 0.67

-- and finally, return the configuration to wezterm
return config
