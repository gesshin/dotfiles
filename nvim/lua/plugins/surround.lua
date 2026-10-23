-- Add, change, and delete surrounding pairs
vim.pack.add({
	{ src = "https://github.com/kylechui/nvim-surround", version = "v4.0.5" },
})

local nvim_surround = require("nvim-surround")

nvim_surround.setup()
