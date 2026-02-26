return {
	"neovim/nvim-lspconfig",
	tag = "v2.6.0",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local blink_cmp = require("blink.cmp")

		local lsp = vim.lsp
		local diagnostic = vim.diagnostic

		lsp.config("*", {
			capabilities = blink_cmp.get_lsp_capabilities(),
		})

		diagnostic.config({
			virtual_text = true,
			signs = {
				text = {
					[diagnostic.severity.ERROR] = "",
					[diagnostic.severity.WARN] = "",
					[diagnostic.severity.INFO] = "",
					[diagnostic.severity.HINT] = "",
				},
			},
		})
	end,
}
