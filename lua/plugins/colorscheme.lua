return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      background = {
        light = "latte",
      },

      color_overrides = require("config.style").catppuccin_overrides,
      custom_highlights = require("config.style").vitesse_highlights,

      term_colors = true,
      dim_inactive = { enabled = true, shade = "dark", percentage = 0.45 },
    },

    -- Configure LazyVim to load gruvbox
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "catppuccin",
      },
    },
  },
}
