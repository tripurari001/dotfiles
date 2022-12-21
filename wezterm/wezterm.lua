local wezterm = require 'wezterm'

return {
  font = wezterm.font_with_fallback {
    { family = 'FiraCode Nerd Font', weight = 'Regular' }
  },
  font_size = 16,
  line_height = 1.2,
  hide_tab_bar_if_only_one_tab = true,
  color_scheme = "tokyonight-storm",
}
