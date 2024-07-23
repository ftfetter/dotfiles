return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
    { "Exafunction/codeium.nvim" },
  },
  opts = function(_, opts)
    local icons = require("config.icons")

    table.insert(opts.sources, 1, {
      name = "codeium",
      group_index = 1,
      priority = 100,
    })

    opts.formatting = {
      fields = { "abbr", "kind", "menu" },
      format = function(_, item)
        local max_width = 50
        if max_width ~= 0 and #item.abbr > max_width then
          item.abbr = string.sub(item.abbr, 1, max_width - 1) .. icons.ui.Ellipsis
        end

        item.menu = item.kind
        item.kind = icons.kinds[item.kind]

        return item
      end,
    }

    opts.window = {
      completion = {
        border = "rounded",
        col_offset = -1,
        scrollbar = false,
        scrolloff = 8,
        side_padding = 1,
      },
      documentation = {
        border = "rounded",
        winhighlight = "Normal:Pmenu,FloatBorder:Pmenu",
      },
    }
  end,
}
