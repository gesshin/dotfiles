-- Instantly jump to any location on screen using customizable labels
return {
	"folke/flash.nvim",
	tag = "v2.1.0",
	event = "VeryLazy",
	config = function()
		local flash = require("flash")

		flash.setup({
			modes = {
				search = { enabled = true }, -- Enables/disables integration with regular search
				char = { enabled = false }, -- Enables/disables integration with motions
				treesitter = { enabled = false }, -- Enables/disables integration with Treesitter
				treesitter_search = { enabled = false }, -- Enables/disables integration with Treesitter search
			},
		})
	end,
}
