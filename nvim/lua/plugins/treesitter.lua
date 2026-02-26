return {
	"nvim-treesitter/nvim-treesitter",
	tag = "v0.10.0",
	dependencies = "windwp/nvim-ts-autotag",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		local nvim_treesitter = require("nvim-treesitter.configs")

		nvim_treesitter.setup({
			highlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },
			ensure_installed = {
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
