return {
	-- {
	--   'Mofiqul/dracula.nvim',
	--   commit = 'ae752c1',
	--   lazy = false,
	--   priority = 1000
	-- },
	{
		"sainnhe/everforest",
		commit = "b03a031",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.everforest_background = "medium"
			vim.g.everforest_better_performance = 1
			vim.g.everforest_enable_italic = 1
		end,
	},
	{
		"sainnhe/gruvbox-material",
		commit = "790afe9",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_background = "medium"
			vim.g.gruvbox_material_better_performance = 1
			vim.g.gruvbox_material_enable_italic = 1
		end,
	},
}
