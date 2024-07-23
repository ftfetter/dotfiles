return {
  "nvim-lualine/lualine.nvim",
  optional = true,
  opts = function(_, opts)
    local icons = require("config.icons")
    local utils = require("lazyvim.util")

    opts.options = {
      theme = "auto",
      globalstatus = true,
      disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
      component_separators = "|",
      section_separators = { left = icons.ui.SeparatorLeft, right = icons.ui.SeparatorRight },
    }

    opts.sections = {
      lualine_a = {
        {
          "mode",
          color = { gui = "bold" },
        },
      },
      lualine_b = {
        {
          "branch",
          color = { gui = "bold" },
          icon = { icons.ui.GitBranch, align = "left" },
        },
      },
      lualine_c = {
        {
          "diagnostics",
          symbols = {
            error = icons.diagnostics.Error,
            warn = icons.diagnostics.Warn,
            info = icons.diagnostics.Info,
            hint = icons.diagnostics.Hint,
          },
        },
      },
      lualine_x = {
        utils.lualine.cmp_source("codeium"),
        -- stylua: ignore
        {
          function() return require("noice").api.status.mode.get() end,
          cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
          color = utils.ui.fg("Constant"),
        },
        -- stylua: ignore
        {
          function() return "  " .. require("dap").status() end,
          cond = function () return package.loaded["dap"] and require("dap").status() ~= "" end,
          color = utils.ui.fg("Debug"),
        },
        {
          require("lazy.status").updates,
          cond = require("lazy.status").has_updates,
          color = utils.ui.fg("Special"),
        },
        {
          "filetype",
          icon_only = false,
          --padding = { left = 1, right = 0 },
        },
      },
      lualine_y = {
        {
          "diff",
          symbols = {
            added = icons.git.added,
            modified = icons.git.modified,
            removed = icons.git.removed,
          },
          source = function()
            local gitsigns = vim.b.gitsigns_status_dict
            if gitsigns then
              return {
                added = gitsigns.added,
                modified = gitsigns.changed,
                removed = gitsigns.removed,
              }
            end
          end,
        },
      },
      lualine_z = {
        { "location", padding = { left = 0, right = 1 } },
      },
    }
  end,
}
