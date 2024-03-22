local wezterm = require("wezterm")

local config = {}

local act = wezterm.action

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

wezterm.on("toggle-opacity", function(window, pane)
	local overrides = window:get_config_overrides() or {}
	if not overrides.window_background_opacity then
		overrides.window_background_opacity = 0.9
	else
		overrides.window_background_opacity = nil
	end
	window:set_config_overrides(overrides)
end)

wezterm.on("toggle-ligature", function(window, pane)
	local overrides = window:get_config_overrides() or {}
	if not overrides.harfbuzz_features then
		-- If we haven't overridden it yet, then override with ligatures disabled
		overrides.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
	else
		-- else we did already, and we should disable out override now
		overrides.harfbuzz_features = nil
	end
	window:set_config_overrides(overrides)
end)

config.window_background_opacity = 1
config.hide_tab_bar_if_only_one_tab = true
config.hide_tab_bar_if_only_one_tab = true
config.font = wezterm.font("JetBrainsMono Nerd Font")

local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
custom.background = "#000000"
custom.tab_bar.background = "#040404"
custom.tab_bar.inactive_tab.bg_color = "#0f0f0f"
custom.tab_bar.new_tab.bg_color = "#080808"

local custom_tokyonight_night = wezterm.color.get_builtin_schemes()["tokyonight_night"]
custom_tokyonight_night.background = "#000000"
custom_tokyonight_night.tab_bar.background = "#040404"
custom_tokyonight_night.tab_bar.inactive_tab.bg_color = "#0f0f0f"
custom_tokyonight_night.tab_bar.new_tab.bg_color = "#080808"

config.color_schemes = {
	["OLEDppuccin"] = custom,
	["CUSTOM_TOKYO"] = custom_tokyonight_night,
}

config.color_scheme = "OLEDppuccin"

config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
	{
		key = "O",
		mods = "SHIFT|CTRL",
		action = wezterm.action.EmitEvent("toggle-opacity"),
	},
	{
		key = "E",
		mods = "SHIFT|CTRL",
		action = wezterm.action.EmitEvent("toggle-ligature"),
	},
	{
		key = "h",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "v",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},

	-- Switch to the default workspace
	{
		key = "y",
		mods = "CTRL|SHIFT",
		action = act.SwitchToWorkspace({
			name = "default",
		}),
	},
	-- Switch to a monitoring workspace, which will have `top` launched into it
	{
		key = "u",
		mods = "CTRL|ALT",
		action = act.SwitchToWorkspace({
			name = "monitoring",
			spawn = {
				args = { "htop" },
			},
		}),
	},
	-- Create a new workspace with a random name and switch to it
	{ key = "i", mods = "CTRL|SHIFT", action = act.SwitchToWorkspace },
	-- Show the launcher in fuzzy selection mode and have it list all workspaces
	-- and allow activating one.
	{
		key = "9",
		mods = "ALT",
		action = act.ShowLauncherArgs({
			flags = "FUZZY|WORKSPACES",
		}),
	},
	-- Prompt for a name to use for a new workspace and switch to it.
	{
		key = "W",
		mods = "CTRL|SHIFT",
		action = act.PromptInputLine({
			description = wezterm.format({
				{ Attribute = { Intensity = "Bold" } },
				{ Foreground = { AnsiColor = "Fuchsia" } },
				{ Text = "Enter name for new workspace" },
			}),
			action = wezterm.action_callback(function(window, pane, line)
				-- line will be `nil` if they hit escape without entering anything
				-- An empty string if they just hit enter
				-- Or the actual line of text they wrote
				if line then
					window:perform_action(
						act.SwitchToWorkspace({
							name = line,
						}),
						pane
					)
				end
			end),
		}),
	},

	-- activate pane selection mode with the default alphabet (labels are "a", "s", "d", "f" and so on)
	{ key = "8", mods = "CTRL", action = act.PaneSelect },
	-- activate pane selection mode with numeric labels
	{
		key = "9",
		mods = "CTRL",
		action = act.PaneSelect({
			alphabet = "1234567890",
		}),
	},
	-- show the pane selection mode, but have it swap the active and selected panes
	{
		key = "0",
		mods = "CTRL",
		action = act.PaneSelect({
			mode = "SwapWithActive",
		}),
	},
}

return config
