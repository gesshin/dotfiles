-- Automatically close pairs like (), [], {}, '', and "" with support for Treesitter and completion engines
vim.pack.add({
	{ src = "https://github.com/windwp/nvim-autopairs", version = "7b9923abad60b903ece7c52940e1321d39eccc79" },
})

local nvim_autopairs = require("nvim-autopairs")

nvim_autopairs.setup({
	disable_filetype = { "snacks_picker_input", "vim" }, -- Disable autopairing in certain filetypes
	check_ts = true, -- Enables/disables smart pair insertion with Treesitter
})
