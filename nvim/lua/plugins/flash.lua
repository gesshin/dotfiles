return {
	"folke/flash.nvim",
	tag = "v2.1.0",
	event = "VeryLazy",
	config = function()
		local flash = require("flash")

		flash.setup({
			modes = {
				search = { enabled = true },
				char = { enabled = false },
				treesitter = { enabled = false },
				treesitter_search = { enabled = false },
			},
		})
	end,
}
