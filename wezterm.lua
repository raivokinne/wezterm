local wezterm = require("wezterm")

return {
	enable_tab_bar = false,
	line_height = 1.4,
	font_size = 18.00,
	font = wezterm.font("DankMono Nerd Font Mono", { weight = "Bold" }),
	window_padding = {
		left = '1cell',
		right = '1cell',
		top = '0.5cell',
		bottom = '0cell',
	},
	window_decorations = "RESIZE",
	leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 },
	keys = {
		{
			mods   = "LEADER",
			key    = "v",
			action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }
		},
		{
			mods   = "LEADER",
			key    = "h",
			action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
		},
		{
			mods = 'LEADER',
			key = 'm',
			action = wezterm.action.TogglePaneZoomState
		},
		{
			mods = "LEADER",
			key = "Space",
			action = wezterm.action.RotatePanes "Clockwise"
		},
		{
			mods = 'LEADER',
			key = '0',
			action = wezterm.action.PaneSelect {
				mode = 'SwapWithActive',
			},
		},
		{
			key = 'Enter',
			mods = 'LEADER',
			action = wezterm.action.ActivateCopyMode
		}
	}
}
