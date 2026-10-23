-- Plugins are managed by the built-in vim.pack. Specs live in lua/plugins/ and are loaded in the order below.

-- All plugins come from the pinned specs in lua/plugins/, so skip the install prompt for each one
local pack_add = vim.pack.add
vim.pack.add = function(specs, opts)
	pack_add(specs, vim.tbl_extend("keep", opts or {}, { confirm = false }))
end

-- Update treesitter parsers whenever the plugin is installed or updated. Registered before any plugin is added.
vim.api.nvim_create_autocmd("PackChanged", {
	group = vim.api.nvim_create_augroup("PackBuild", {}),
	callback = function(args)
		local data = args.data
		if data.spec.name == "nvim-treesitter" and (data.kind == "install" or data.kind == "update") then
			if not data.active then
				vim.cmd.packadd("nvim-treesitter")
			end
			vim.cmd("TSUpdate")
		end
	end,
})

-- Order matters because vim.pack does not resolve dependencies
local plugins = {
	"colorscheme",
	"treesitter",
	"blink-cmp",
	"lspconfig",
	"auto-session",
	"autopairs",
	"colorizer",
	"conform",
	"flash",
	"git-conflict",
	"gitsigns",
	"lualine",
	"noice",
	"oil",
	"snacks",
	"surround",
	"vim-tmux-navigator",
	"which-key",
}

for _, plugin in ipairs(plugins) do
	require("plugins." .. plugin)
end
