-- View Git decorators in signcolumn, hunks, diff previews, and blameline
vim.pack.add({
	{ src = "https://github.com/lewis6991/gitsigns.nvim", version = "v2.1.0" },
})

local gitsigns = require("gitsigns")

gitsigns.setup({
	sign_priority = 100, -- Set gitsigns priority (higher -> left)
	signs = { -- Customize Git unstaged indicators
		add = { text = "┃" },
		change = { text = "┃" },
		delete = { text = "_" },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
		untracked = { text = "┆" },
	},
	signs_staged = { -- Customize Git staged indicators
		add = { text = "┃" },
		change = { text = "┃" },
		delete = { text = "_" },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
		untracked = { text = "┆" },
	},
	preview_config = { -- Customize diff preview
		border = "rounded",
	},
})
