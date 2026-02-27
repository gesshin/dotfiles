-- Completion engine with support for LSPs, cmdline, signature help, and snippets
return {
	"saghen/blink.cmp",
	tag = "v1.9.1",
	dependencies = "rafamadriz/friendly-snippets",
	event = "InsertEnter",
	config = function()
		local blink_cmp = require("blink.cmp")

		blink_cmp.setup({
			cmdline = { enabled = false }, -- Enables/disables completion for the cmdline
			keymap = { -- Define completion keymaps
				preset = "none",
				["<CR>"] = { "accept", "fallback" },
				["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
				["<C-e>"] = { "hide", "fallback" },
				["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
				["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
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
	end,
}
