return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      vim.list_extend(opts.ensure_installed, {
        "dockerfile",
        "go",
        "gomod",
        "gosum",
        "gowork",
        "hcl",
        "json",
        "json5",
        "jsonc",
        "markdown",
        "markdown_inline",
        "templ",
        "terraform",
        "yaml",
      })
    end
  end,
}
