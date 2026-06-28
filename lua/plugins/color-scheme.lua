return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- Load this during startup
    priority = 1000, -- High priority to load before other plugins
    opts = {
      flavour = "mocha", -- Force the "mocha" variant (dark)
      term_colors = true, -- Populate terminal_color_0..15 from the palette
    },
  },
  -- Tell LazyVim to actually use catppuccin-mocha as the active colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
