-- LSP configuration framework
vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig", version = "v2.10.0" },
})

local blink_cmp = require("blink.cmp")

local lsp = vim.lsp
local diagnostic = vim.diagnostic

lsp.config("*", {
	capabilities = blink_cmp.get_lsp_capabilities(), -- Connect LSP with completion engine
})

-- Language servers to enable. Install them by hand (see setup.sh)
lsp.enable({
	"lua_ls",
	-- JSON and YAML
	"jsonls",
	"yamlls",
	-- Rails
	"ruby_lsp",
	-- React
	"ts_ls",
	-- Python
	"basedpyright",
	"ruff",
})

diagnostic.config({
	virtual_text = true, -- Enables/disables diagnostic virtual text
	signs = { -- Customize diagnostic signs
		text = {
			[diagnostic.severity.ERROR] = "",
			[diagnostic.severity.WARN] = "",
			[diagnostic.severity.INFO] = "",
			[diagnostic.severity.HINT] = "",
		},
	},
})
