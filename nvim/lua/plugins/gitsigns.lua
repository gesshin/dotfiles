-- View Git decorators in signcolumn, hunks, diff previews, and blameline
return {
	"lewis6991/gitsigns.nvim",
	tag = "v2.0.0",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local gitsigns = require("gitsigns")

		gitsigns.setup({
			signs = { -- Customize Git unstaged indicators
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
			signs_staged = { -- Customize Git staged indicators
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
			preview_config = { -- Customize diff preview
				border = "rounded",
			},
		})
	end,
}
