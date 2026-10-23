-- Package manager for LSP servers, DAP servers, Linters, and Formatters
vim.pack.add({
	{ src = "https://github.com/mason-org/mason.nvim", version = "v2.3.1" },
})

local mason = require("mason")

mason.setup()
