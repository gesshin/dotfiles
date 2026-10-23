-- Treesitter configurations and abstraction layer
vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
})

local nvim_treesitter = require("nvim-treesitter")

-- List of parsers to automatically install
nvim_treesitter.install({
	"bash",
	"comment",
	"diff",
	"json",
	"lua",
	"markdown",
	"markdown_inline",
	"regex",
	"toml",
	"vim",
	"yaml",
	-- Rails
	"embedded_template",
	"ruby",
	-- React
	"html",
	"javascript",
	"tsx",
	"typescript",
	-- Python
	"python",
})

-- Enables highlights and indentation for buffers that have a parser
vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("Treesitter", {}),
	callback = function(args)
		if pcall(vim.treesitter.start, args.buf) then
			vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		end
	end,
})
