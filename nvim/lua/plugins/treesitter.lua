-- Treesitter configurations and abstraction layer
return {
	"nvim-treesitter/nvim-treesitter",
	tag = "v0.10.0",
	dependencies = "windwp/nvim-ts-autotag",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		local nvim_treesitter = require("nvim-treesitter.configs")

		nvim_treesitter.setup({
			highlight = { enable = true }, -- Enables/disables highlights
			indent = { enable = true }, -- Enables/disables indendation
			autotag = { enable = true }, -- Enables/disables auto tagging
			ensure_installed = { -- List of parsers to automatically install
				"bash",
				"comment",
				"diff",
				"dockerfile",
				"html",
				"javascript",
				"json",
				"go",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"regex",
				"tsx",
				"typescript",
				"vim",
				"yaml",
			},
		})
	end,
}
