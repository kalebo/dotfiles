-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act             = wezterm.action

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'Tomorrow Night Bright'
-- config.color_scheme = 'Seti'
config.front_end = "OpenGL"
config.color_scheme = 'Symfonic'
config.window_content_alignment = { horizontal = "Center", vertical = "Center", }
config.window_padding = { left = "0", right = "0", top = "0", bottom = "0", }

config.font = wezterm.font "CommitMono Nerd Font"
config.font_size = 11.0
config.window_background_opacity = 0.8
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true

-- wezterm.config.leader = {
--   key = 'a',
--   mods = 'CTRL',
--   timeout_milliseconds = 2000,
-- }
--
-- wezterm.config.keys = {
--   {
--     key = 'c',
--     mods = 'LEADER',
--     action = act.SpawnTab 'CurrentPaneDomain',
--   },
-- }
--

config.tls_clients = {
  {name = 'c3n6m', remote_address='c3n6.coreform:4367', bootstrap_via_ssh='c3n6.coreform', expected_cn = 'c3n6',},
}

-- and finally, return the configuration to wezterm
return config

