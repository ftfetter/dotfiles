local ctp_feline = require('catppuccin.groups.integrations.feline')
local C = require("catppuccin.palettes.mocha")

local assets = {
	left_separator = "",
	right_separator = "",
	mode_icon = "",
	dir = "",
	file = "",
	lsp = {
		server = "",
		error = "",
		warning = "",
		info = "",
		hint = "",
	},
	git = {
		branch = "",
		added = "",
		changed = "",
		removed = "",
	},
}

local sett = {
	text = C.surface0,
	bkg = C.surface0,
	diffs = C.mauve,
	extras = C.overlay1,
	curr_file = C.maroon,
	curr_dir = C.flamingo,
	show_modified = true,
}

local mode_colors = {
	["n"] = { "NORMAL", C.lavender },
	["no"] = { "N-PENDING", C.lavender },
	["i"] = { "INSERT", C.green },
	["ic"] = { "INSERT", C.green },
	["t"] = { "TERMINAL", C.green },
	["v"] = { "VISUAL", C.flamingo },
	["V"] = { "V-LINE", C.flamingo },
	[""] = { "V-BLOCK", C.flamingo },
	["R"] = { "REPLACE", C.maroon },
	["Rv"] = { "V-REPLACE", C.maroon },
	["s"] = { "SELECT", C.maroon },
	["S"] = { "S-LINE", C.maroon },
	[""] = { "S-BLOCK", C.maroon },
	["c"] = { "COMMAND", C.peach },
	["cv"] = { "COMMAND", C.peach },
	["ce"] = { "COMMAND", C.peach },
	["r"] = { "PROMPT", C.teal },
	["rm"] = { "MORE", C.teal },
	["r?"] = { "CONFIRM", C.mauve },
	["!"] = { "SHELL", C.green },
}

--local vim_mode = {
--    provider = {
--        name = "vi_mode",
--        opts = {
--            show_mode_name = true
--        }
--    },
--    hl = function()
--        return {
--            name = "NeovimModeHLColor",
--            fg = pallette.bg,
--            bg = require('feline.providers.vi_mode').get_mode_color(),
--            style = 'bold'
--        }
--    end,
--    left_sep = "block",
--    right_sep = assets.right_separator
--}
--
--local git_branch = {
--    provider = "git_branch",
--    hl = {
--        fg = pallette.git.branch,
--        bg = pallette.bg,
--        style = 'bold'
--    },
--    left_sep = "block",
--    right_sep = "block",
--}
--
--local git_diff_added = {
--    provider = "git_diff_added",
--    hl = {
--        fg = pallette.git.added,
--        bg = pallette.bg,
--    },
--    icon = assets.git.added,
--    left_sep = "block",
--    right_sep = "block",
--}
--
--local git_diff_removed = {
--    provider = "git_diff_removed",
--    hl = {
--        fg = pallette.git.removed,
--        bg = pallette.bg,
--    },
--    icon = assets.git.removed,
--    left_sep = "block",
--    right_sep = "block",
--}
--
--local git_diff_changed = {
--    provider = "git_diff_changed",
--    hl = {
--        fg = pallette.git.changed,
--        bg = pallette.bg,
--    },
--    icon = assets.git.changed,
--    left_sep = "block",
--    right_sep = "block",
--}
--
--local file_info = {
--    provider = {
--        name = "file_info",
--        opts = {
--            type = "relative",
--        },
--    },
--    hl = {
--        fg = pallette.file.info,
--        bg = pallette.bg,
--        style = 'bold',
--    },
--    left_sep = "block",
--    right_sep = "block",
--}
--
--local diagnostic_errors = {
--    provider = "diagnostic_errors",
--    hl = {
--        fg = pallette.diagnostic.errors,
--        bg = pallette.bg,
--    },
--    icon = " " .. assets.lsp.error .. " ",
--}
--
--local diagnostic_warnings = {
--    provider = "diagnostic_warnings",
--    hl = {
--        fg = pallette.diagnostic.warnings,
--        bg = pallette.bg,
--    },
--    icon = " " .. assets.lsp.warning .. " ",
--}
--
--local diagnostic_info = {
--    provider = "diagnostic_info",
--    hl = {
--        fg = pallette.diagnostic.info,
--        bg = pallette.bg,
--    },
--    icon = " " .. assets.lsp.info .. " ",
--}
--
--local diagnostic_hints = {
--    provider = "diagnostic_hints",
--    hl = {
--        fg = pallette.diagnostic.hints,
--        bg = pallette.bg,
--    },
--    icon = " " .. assets.lsp.hint .. " ",
--}
--
--local lsp_client_names = {
--    provider = "lsp_client_names",
--    hl = {
--        fg = pallette.lsp.clients,
--        bg = pallette.bg,
--        style = 'bold',
--    },
--    left_sep = "block",
--    right_sep = "block",
--}
--
--local file_type = {
--    provider = {
--        name = "file_type",
--        opts = {
--            filetype_icon = true,
--            case = "titlecase",
--        },
--    },
--    hl = {
--        fg = pallette.file.type,
--        bg = pallette.bg,
--        style = 'bold',
--    },
--    left_sep = "block",
--    right_sep = "block",
--}
--
--local file_encoding = {
--    provider = "file_encoding",
--    hl = {
--        fg = pallette.file.encoding,
--        bg = pallette.bg,
--        style = "italic",
--    },
--    left_sep = "block",
--    right_sep = "block",
--}
--
--local position = {
--    provider = "position",
--    hl = {
--        fg = pallette.file.position,
--        bg = pallette.bg,
--        style = 'bold',
--    },
--    left_sep = "block",
--    right_sep = "block",
--}
--
--local line_percentage = {
--    provider = "line_percentage",
--    hl = {
--        fg = pallette.file.percentage,
--        bg = pallette.bg,
--        style = 'bold',
--    },
--    left_sep = "block",
--    right_sep = "block",
--}
--
--local scroll_bar = {
--    provider = "scroll_bar",
--    hl = {
--        fg = pallette.file.scrollbar,
--        bg = pallette.bg,
--    },
--}
--
--local left_side = {
--    vim_mode,
--    git_branch,
--    git_diff_added,
--    git_diff_removed,
--    git_diff_changed,
--}
--
--local center = {
--    file_info,
--    diagnostic_errors,
--    diagnostic_warnings,
--    diagnostic_info,
--    diagnostic_hints
--}
--
--local right_side = {
--    lsp_client_names,
--    file_type,
--    file_encoding,
--    position,
--    line_percentage,
--    scroll_bar
--}

ctp_feline.setup({assets = assets, sett = sett, mode_colors = mode_colors})

-- local custom_component = ctp_feline.get()
-- custom_component.active = { left_side, center, right_side }
-- custom_component.inactive = { left_side, center, right_side }


require('feline').setup({
    components = ctp_feline.get()
})
