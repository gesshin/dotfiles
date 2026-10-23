-- File explorer as a buffer
vim.pack.add({
	{ src = "https://github.com/stevearc/oil.nvim", version = "v2.16.0" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons", version = "dad71387de386a946b123079d0e53f23028f3abd" },
})

local oil = require("oil")

oil.setup({
	use_default_keymaps = false, -- Enable/disable default keymaps
	keymaps = {
		["-"] = { "actions.parent", mode = "n" },
		["_"] = { "actions.open_cwd", mode = "n" },
		["<CR>"] = "actions.select",
		["<C-v>"] = { "actions.select", mode = { "n" }, opts = { vertical = true } },
		["<C-h>"] = { "actions.select", mode = { "n" }, opts = { horizontal = true } },
		["<C-p>"] = "actions.preview",
		["<C-y>"] = { "actions.yank_entry", mode = { "n" }, opts = { modify = ":." } },
		["<C-c>"] = { "actions.close", mode = { "n" } },
	},
	view_options = { -- Customize the main view
		show_hidden = true, -- Enable/disable showing files/directories that start with "."
		is_always_hidden = function(name) -- Filter what never gets shown
			local blacklist = { "..", ".DS_Store", ".git" }
			return vim.tbl_contains(blacklist, name)
		end,
	},
	float = { -- Customize the floating window
		max_width = 0.5,
		max_height = 0.5,
		preview_split = "right",
		border = "rounded",
	},
})
