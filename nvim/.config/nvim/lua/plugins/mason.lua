return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed or {}
    vim.list_extend(opts.ensure_installed, {
      "black",
      "delve",
      "gofumpt",
      "goimports",
      "gomodifytags",
      "hadolint",
      "impl",
      "markdownlint",
      "marksman",
      "prettier",
    })
  end,
}
