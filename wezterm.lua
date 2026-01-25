local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Font
config.font_size = 14.0
config.line_height = 1.12
config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"

-- Window look (2026 glass style)
config.window_background_opacity = 0.86
config.macos_window_background_blur = 25 -- safe even if you're not on mac
config.text_background_opacity = 1.0

config.window_padding = {
  left = 14,
  right = 14,
  top = 12,
  bottom = 12,
}

config.window_decorations = "NONE"
config.enable_scroll_bar = false

-- Cursor (BLINKING FIX)
config.cursor_blink_rate = 500
config.default_cursor_style = "BlinkingBlock"
config.force_reverse_video_cursor = false

-- Colors (Catppuccin-ish + IJSKOUD blue accent)
config.colors = {
  foreground = "#d4d4d4",
  background = "#0f1115",

  cursor_bg = "#89b4fa",
  cursor_fg = "#0f1115",
  cursor_border = "#89b4fa",

  selection_fg = "#0f1115",
  selection_bg = "#89b4fa",

  ansi = {
    "#45475a",
    "#f38ba8",
    "#a6e3a1",
    "#f9e2af",
    "#89b4fa",
    "#f5c2e7",
    "#94e2d5",
    "#bac2de",
  },
  brights = {
    "#585b70",
    "#f38ba8",
    "#a6e3a1",
    "#f9e2af",
    "#89b4fa",
    "#f5c2e7",
    "#94e2d5",
    "#a6adc8",
  },

  tab_bar = {
    background = "#0f1115",
    active_tab = {
      bg_color = "#89b4fa",
      fg_color = "#0f1115",
      intensity = "Bold",
      italic = true,
    },
    inactive_tab = {
      bg_color = "#1a1b26",
      fg_color = "#a6adc8",
    },
    inactive_tab_hover = {
      bg_color = "#2a2b3a",
      fg_color = "#d4d4d4",
    },
  },
}

-- Tab bar
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 28

-- Keybindings (keep yours)
config.keys = {
  { key = 'c', mods = 'CTRL', action = wezterm.action.CopyTo 'Clipboard' },
  { key = 'v', mods = 'CTRL', action = wezterm.action.PasteFrom 'Clipboard' },
  { key = 'r', mods = 'CTRL|SHIFT', action = wezterm.action.ReloadConfiguration },
  { key = 't', mods = 'CTRL', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
  { key = 'w', mods = 'CTRL', action = wezterm.action.CloseCurrentTab{ confirm = false } },
  { key = 'Tab', mods = 'CTRL', action = wezterm.action.ActivateTabRelative(1) },
  { key = 'LeftArrow', mods = 'CTRL', action = wezterm.action.ActivateTabRelative(-1) },
  { key = 'RightArrow', mods = 'CTRL', action = wezterm.action.ActivateTabRelative(1) },
  { key = '+', mods = 'CTRL|SHIFT', action = wezterm.action.IncreaseFontSize },
  { key = '-', mods = 'CTRL|SHIFT', action = wezterm.action.DecreaseFontSize },
  { key = 'f', mods = 'CTRL', action = wezterm.action.ToggleFullScreen },
  { key = 'q', mods = 'CTRL', action = wezterm.action.QuitApplication },
}

-- Window size
config.initial_cols = 120
config.initial_rows = 35

-- No bells
config.audible_bell = "Disabled"
config.visual_bell = {
  fade_in_duration_ms = 0,
  fade_out_duration_ms = 0,
}

-- Performance (WebGPU = FAST)
config.front_end = "WebGpu"
config.max_fps = 144
config.animation_fps = 144

-- Misc
config.automatically_reload_config = true
config.exit_behavior = "Close"

return config