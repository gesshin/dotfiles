-- Manages formatters and automates the process of running external formatters
vim.pack.add({
	{ src = "https://github.com/stevearc/conform.nvim", version = "v9.1.0" },
})

local conform = require("conform")

conform.setup({
	formatters_by_ft = { -- Mapping of formatters by filetype
		json = { "prettier" },
		lua = { "stylua" },
		yaml = { "prettier" },
	},
})

-- Trigger format on buffer write
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		conform.format({ bufnr = args.buf })
	end,
})
