-- Highlights color codes
vim.pack.add({
	{ src = "https://github.com/catgoose/nvim-colorizer.lua", version = "664c0b7cea1de71f8b65dfe951b7996fc3e6ccde" },
})

local colorizer = require("colorizer")

colorizer.setup({
	filetypes = { "*" }, -- List of supported filetypes
	user_default_options = {
		names = false, -- Enables/disables name codes like "Blue" or "red"
		RGB = false, -- Enables/disables #RGB hexcodes
		RGBA = false, -- Enables/disables #RGBA hexcodes
	},
})
