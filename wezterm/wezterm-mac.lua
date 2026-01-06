local wezterm = require 'wezterm'
return {
  adjust_window_size_when_changing_font_size = false,
  -- color_scheme = 'termnial.sexy',
  color_scheme = 'Catppuccin Mocha',
  enable_tab_bar = false,
  font_size = 16.0,
  font = wezterm.font('JetBrains Mono'),
  -- macos_window_background_blur = 40,
  macos_window_background_blur = 30,

  -- window_background_image = '/Users/omerhamerman/Downloads/3840x1080-Wallpaper-041.jpg',
  -- window_background_image_hsb = {
  -- 	brightness = 0.01,
  -- 	hue = 1.0,
  -- 	saturation = 0.5,
  -- },
  -- window_background_opacity = 0.92,
  window_background_opacity = 1.0,
  -- window_background_opacity = 0.78,
  -- window_background_opacity = 0.20,
  window_decorations = 'RESIZE',
  keys = {
    -- Fullscreen
    {
      key = 'q',
      mods = 'CTRL',
      action = wezterm.action.ToggleFullScreen,
    },

    -- Clear scrollback
    {
      key = '\'',
      mods = 'CTRL',
      action = wezterm.action.ClearScrollback 'ScrollbackAndViewport',
    },

    -- === Tabs (Vim-style) ===

    -- New tab
    {
      key = 't',
      mods = 'CTRL',
      action = wezterm.action.SpawnTab 'CurrentPaneDomain',
    },

    -- Move to previous tab (vim h)
    {
      key = 'h',
      mods = 'CTRL',
      action = wezterm.action.ActivateTabRelative(-1),
    },

    -- Move to next tab (vim l)
    {
      key = 'l',
      mods = 'CTRL',
      action = wezterm.action.ActivateTabRelative(1),
    },

    -- Close current tab (vim-like)
    {
      key = 'w',
      mods = 'CTRL',
      action = wezterm.action.CloseCurrentTab { confirm = true },
    }, {
    key = ',',
    mods = 'CTRL',
    action = wezterm.action.SplitHorizontal {
      domain = 'CurrentPaneDomain',
    },
  },

    -- Vertical split (left/right)
    {
      key = '/',
      mods = 'CTRL',
      action = wezterm.action.SplitVertical {
        domain = 'CurrentPaneDomain',
      },
    }, {
    key = 'LeftArrow',
    mods = 'CTRL',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
    {
      key = 'RightArrow',
      mods = 'CTRL',
      action = wezterm.action.ActivatePaneDirection 'Right',
    },
    {
      key = 'UpArrow',
      mods = 'CTRL',
      action = wezterm.action.ActivatePaneDirection 'Up',
    },
    {
      key = 'DownArrow',
      mods = 'CTRL',
      action = wezterm.action.ActivatePaneDirection 'Down',
    },
  },
  mouse_bindings = {
    -- Ctrl-click will open the link under the mouse cursor
    {
      event = { Up = { streak = 1, button = 'Left' } },
      mods = 'CTRL',
      action = wezterm.action.OpenLinkAtMouseCursor,
    },
  },
}
