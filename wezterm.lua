local wezterm = require 'wezterm'
local act = wezterm.action

local config = wezterm.config_builder and wezterm.config_builder() or {}

config.colors = {
  foreground = '#e6f0df',
  background = '#131a16',
  cursor_bg = '#d0e1c1',
  cursor_fg = '#1e2a21',
  cursor_border = '#c2d8aa',
  selection_fg = '#f2f8ec',
  selection_bg = '#2c3a30',
  ansi = {
    '#1f2722', '#b26e55', '#7f9f65', '#c0a76a', '#4f8273', '#8c7e92', '#6b9f99', '#d6e6cd',
  },
  brights = {
    '#27322b', '#d4856d', '#9bc07c', '#e2c279', '#63a590', '#a895ae', '#83c1b9', '#eef6e6',
  },
  tab_bar = {
    background = '#121915',
    active_tab = {
      fg_color = '#f0f6ea',
      bg_color = '#283527',
      intensity = 'Normal',
      underline = 'None',
      italic = false,
      strikethrough = false,
    },
    inactive_tab = {
      fg_color = '#a3b199',
      bg_color = '#1a231c',
    },
    inactive_tab_hover = {
      fg_color = '#dbe7cd',
      bg_color = '#223026',
      italic = false,
    },
    new_tab = {
      fg_color = '#9fb58c',
      bg_color = '#151d18',
    },
    new_tab_hover = {
      fg_color = '#f2f8ec',
      bg_color = '#223026',
      italic = false,
    },
  },
}

config.window_background_gradient = {
  orientation = 'Vertical',
  colors = {
    '#101611',
    '#162019',
    '#1b271f',
  },
  interpolation = 'CatmullRom',
  blend = 'Rgb',
}

config.font = wezterm.font_with_fallback {
  'JetBrains Mono',
  'SFMono Nerd Font',
  'Menlo',
}
config.font_size = 13.0
config.window_decorations = 'RESIZE'
config.native_macos_fullscreen_mode = true
config.window_background_opacity = 0.96
config.macos_window_background_blur = 16
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = false
config.use_fancy_tab_bar = true
config.window_padding = {
  left = 10,
  right = 10,
  top = 14,
  bottom = 10,
}
config.window_frame = {
  active_titlebar_bg = '#1d2a21',
  inactive_titlebar_bg = '#131a16',
  active_titlebar_fg = '#ecf5e6',
  inactive_titlebar_fg = '#93a68f',
}
config.inactive_pane_hsb = {
  hue = 1.0,
  saturation = 0.85,
  brightness = 0.7,
}

config.keys = {
  { key = 'Backspace', mods = 'CMD', action = act.SendString '\x15' },
  { key = 'Delete', mods = 'CMD', action = act.SendString '\x15' },
  { key = 'Backspace', mods = 'OPT', action = act.SendString '\x1b\x7f' },
  { key = 'Delete', mods = 'OPT', action = act.SendString '\x1bd' },
  { key = 'LeftArrow', mods = 'CMD', action = act.SendString '\x01' },
  { key = 'RightArrow', mods = 'CMD', action = act.SendString '\x05' },
  { key = 'LeftArrow', mods = 'OPT', action = act.SendString '\x1bb' },
  { key = 'RightArrow', mods = 'OPT', action = act.SendString '\x1bf' },
  { key = 'z', mods = 'CMD', action = act.SendString '\x1f' },
  { key = 'z', mods = 'CMD|SHIFT', action = act.SendString '\x18\x1f' },
  { key = 'f', mods = 'CMD', action = act.ToggleFullScreen },
  { key = 'k', mods = 'CMD', action = act.ClearScrollback 'ScrollbackAndViewport' },
}

return config
