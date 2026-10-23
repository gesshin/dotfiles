-- Automatically handles LSP server installation
vim.pack.add({
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim", version = "v2.3.0" },
	{ src = "https://github.com/mason-org/mason.nvim", version = "v2.3.1" },
	{ src = "https://github.com/neovim/nvim-lspconfig", version = "v2.10.0" },
})

local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
	ensure_installed = { -- List of LSP servers to automatically install
		"jsonls",
		"lua_ls",
		"yamlls",
	},
})
