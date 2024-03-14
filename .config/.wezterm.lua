local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font = wezterm.font 'Berkeley Mono'
config.font_size = 17
config.window_background_opacity = 0.9
config.window_decorations = "NONE"
config.enable_tab_bar = false
config.color_scheme = 'Vibrant Ink (Gogh)'

config.use_dead_keys = false
config.scrollback_lines = 5000

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

return config
