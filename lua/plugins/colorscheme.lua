return {
    'catppuccin/nvim',
    name = 'catppuccin',
    opts = {
        flavour = 'mocha',
        color_overrides = require('config.style').catppuccin_overrides,
        custom_highlights = require('config.style').vitesse_highlights,

        term_colors = true,
        dim_inactive = { enabled = true, shade = 'dark', percentage = 0.45 },
    },
}
