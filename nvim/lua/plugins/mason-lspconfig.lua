-- Automatically handles LSP server installation
return {
	"mason-org/mason-lspconfig.nvim",
	tag = "v2.1.0",
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		local mason_lspconfig = require("mason-lspconfig")

		mason_lspconfig.setup({
			ensure_installed = { -- List of LSP servers to automatically install
				"gopls",
				"jsonls",
				"lua_ls",
				"pyright",
				"ts_ls",
				"yamlls",
			},
		})
	end,
}
