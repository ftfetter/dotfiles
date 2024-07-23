return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  event = {
    "BufReadPre " .. vim.fn.expand("~") .. "/Notes/**.md",
    "BufNewFile " .. vim.fn.expand("~") .. "/Notes/**.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "notes",
        path = "~/Notes",
      },
    },
  },
}
