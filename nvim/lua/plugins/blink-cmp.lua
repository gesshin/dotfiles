-- Completion engine with support for LSPs, cmdline, signature help, and snippets
vim.pack.add({
	{ src = "https://github.com/saghen/blink.cmp", version = "v1.10.2" },
	{ src = "https://github.com/rafamadriz/friendly-snippets", version = "6cd7280adead7f586db6fccbd15d2cac7e2188b9" },
})

local blink_cmp = require("blink.cmp")

blink_cmp.setup({
	cmdline = {
		enabled = true, -- Enables/disables completion for the cmdline
		keymap = { preset = "inherit" }, -- Inherits the mappings from the top level keymap
		sources = function() -- No completion while searching with / or ?
			local cmdtype = vim.fn.getcmdtype()
			if cmdtype == "/" or cmdtype == "?" then
				return {}
			end
			return { "buffer", "cmdline" }
		end,
	},
	keymap = { -- Define completion keymaps
		preset = "none",
		["<C-e>"] = { "accept", "fallback" },
		["<C-Space>"] = { "show", "hide", "fallback" },
		["<C-j>"] = { "select_next", "fallback" },
		["<C-k>"] = { "select_prev", "fallback" },
		["<Tab>"] = { "snippet_forward", "fallback" },
		["<S-Tab>"] = { "snippet_backward", "fallback" },
	},
	sources = { -- List of enabled completion providers
		default = { "lsp", "path", "snippets", "buffer" },
	},
	completion = {
		documentation = { -- Customize documentation display
			auto_show = true,
			window = { border = "rounded" },
		},
		menu = { -- Customize completion menu
			border = "rounded",
			draw = {
				columns = {
					{ "label" },
					{ "kind_icon", "kind", gap = 1 },
				},
			},
		},
	},
})
