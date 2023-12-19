local wezterm = require 'wezterm'

local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.window_background_opacity = 1
config.hide_tab_bar_if_only_one_tab = true
config.hide_tab_bar_if_only_one_tab = true
config.font = wezterm.font "Hack Nerd Font"

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
        key = 'n',
        mods = 'SHIFT|CTRL',
        action = wezterm.action.ToggleFullScreen,
    },
}

return config
