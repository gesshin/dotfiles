-- Automatically handles DAP, Linter, and Formatter installation
vim.pack.add({
	{ src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim", version = "443f1ef8b5e6bf47045cb2217b6f748a223cf7dc" },
	{ src = "https://github.com/mason-org/mason.nvim", version = "v2.3.1" },
})

local mason_tool_installer = require("mason-tool-installer")

mason_tool_installer.setup({
	ensure_installed = { -- List of tools to automatically install
		-- formatters
		"prettier",
		"stylua",
	},
})
