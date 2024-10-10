local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font_size = 17

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.8
config.colors = {
  foreground = "#CBE0F0",
  background = "#011423",
  cursor_bg = "#47FF9C",
  cursor_border = "#47FF9C",
  cursor_fg = "#011423",
  selection_bg = "#033259",
  selection_fg = "#CBE0F0",
  ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
  brights = { "#7D8AAD", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

config.keys = {
	{
		key = 'Backspace',
		mods = 'CTRL',
		action = wezterm.action.SendKey { key = 'w', mods = 'CTRL' },
	},
	{
		key = 'v',
		mods = 'CTRL',
		action = wezterm.action.PasteFrom('Clipboard'),
	},
	{
		key = 'x',
		mods = 'CTRL',
		action = wezterm.action.CloseCurrentTab { confirm = true },
	},
}
return config
