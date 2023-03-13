require("catppuccin").setup({
    flavour = "mocha",
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        harpoon = true,
        treesitter = true
    }
})

vim.cmd.colorscheme "catppuccin"

local theme_colors = require("catppuccin.palettes.mocha")

local pallette = {
    statusbar = {
        bg = theme_colors.surface0,
        git = {
            branch = theme_colors.yellow,
            added = theme_colors.green,
            removed = theme_colors.red,
            changed = theme_colors.rosewater,
        },
        file = {
            info = theme_colors.text,
            type = theme_colors.red,
            encoding = theme_colors.teal,
            position = theme_colors.green,
            percentage = theme_colors.sapphire,
            scrollbar = theme_colors.rosewater,
        },
        diagnostic = {
            errors = theme_colors.red,
            warnings = theme_colors.yellow,
            info = theme_colors.sky,
            hints = theme_colors.rosewater,
        },
        lsp = {
            clients = theme_colors.overlay1,
        },
    },
}

return pallette

