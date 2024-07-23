return {
  {
    "folke/tokyonight.nvim",
    opts = {
      lualine_bold = true,
      style = "moon",
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      transparent = true,
      --on_colors = function(colors)
      --  colors.git.add = colors.green
      --  colors.git.change = colors.blue
      --  colors.git.delete = colors.red
      --  colors.git_signs.add = colors.green
      --  colors.git_signs.change = colors.blue
      --  colors.git_signs.delete = colors.comment
      --end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
