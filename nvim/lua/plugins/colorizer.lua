return {
	"catgoose/nvim-colorizer.lua",
	commit = "ae0d663",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local colorizer = require("colorizer")

		colorizer.setup({
			filetypes = { "*" },
			user_default_options = {
				names = false,
				RGB = false,
				RGBA = false,
			},
		})
	end,
}
