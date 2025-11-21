local MAX_PICS = 9

local wezterm = require("wezterm")
local config  = wezterm.config_builder()
local utils = dofile(wezterm.config_dir .. "/utils.lua")

-- ─── 🚀 Startup Program ───────────────────────────────────────────────────────
config.default_prog = { "wsl", "tmux", "new-session", "-A", "-s", "main" }
config.automatically_reload_config = true       -- Reload config on save

-- ─── ❌ Window Close Behavior ─────────────────────────────────────────────────
config.window_close_confirmation = "NeverPrompt"

-- ─── 📑 Tab Bar Settings ──────────────────────────────────────────────────────
config.enable_tab_bar = false                   -- Hide tab bar completely

-- ─── 🖼 Window Frame ───────────────────────────────────────────────────────────
config.window_frame = {
  font_size = 0,                                 -- Removes window frame text
}

-- ─── 🎨 Appearance And Theme ──────────────────────────────────────────────────
config.color_scheme = "Tokyo Night"             -- Theme: Tokyo Night
config.win32_system_backdrop = "Acrylic"        -- Windows 11 Acrylic backdrop
config.front_end = "WebGpu"                     -- Modern GPU rendering engine

-- ─── 🔤 Font Configuration ─────────────────────────────────────────────────────
config.adjust_window_size_when_changing_font_size = false

config.font = wezterm.font_with_fallback({
  "CaskaydiaCove Nerd Font",                     -- Primary font
  {
    family = "MesloLGS Nerd Font",
    scale = 1.25,
  },
  "Noto Color Emoji",                            -- Emoji support
})

config.font_size = 14

-- ─── 🧱 Window Padding ─────────────────────────────────────────────────────────
config.window_padding = {
  top    = 5,
  bottom = 0,
  left   = 5,
  right  = 0,
}

-- ─── 🌄 Background Layers ─────────────────────────────────────────────────────
config.background = {
  -- Background Image Layer
  {
    source = {
      File = utils.random_image_path(MAX_PICS),
    },
    hsb = {
      hue        = 1.0,
      saturation = 1.02,
      brightness = 0.25,                          -- Darken photo for readability
    },
  },

  -- Color Overlay Layer
  {
    source = {
      Color = "#282c35",
    },
    width   = "100%",
    height  = "100%",
    opacity = 0.75,                               -- Soft dark overlay
  },
}

return config

