-- Instantly jump to any location on screen using customizable labels
vim.pack.add({
	{ src = "https://github.com/folke/flash.nvim", version = "v2.1.0" },
})

local flash = require("flash")

flash.setup({
	modes = {
		search = { enabled = true }, -- Enables/disables integration with regular search
		char = { enabled = false }, -- Enables/disables integration with motions
		treesitter = { enabled = false }, -- Enables/disables integration with Treesitter
		treesitter_search = { enabled = false }, -- Enables/disables integration with Treesitter search
	},
})
