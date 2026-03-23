-- Completion engine with support for LSPs, cmdline, signature help, and snippets
return {
	"saghen/blink.cmp",
	tag = "v1.9.1",
	dependencies = "rafamadriz/friendly-snippets",
	event = "InsertEnter",
	config = function()
		local blink_cmp = require("blink.cmp")

		blink_cmp.setup({
			cmdline = {
				enabled = true, -- Enables/disables completion for the cmdline
				keymap = { preset = "inherit" }, -- Inherits the mappings from the top level keymap
			},
			keymap = { -- Define completion keymaps
				preset = "none",
				["<C-e>"] = { "accept", "fallback" },
				["<C-Space>"] = { "show", "hide", "fallback" },
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
					cmdline = {
						["/"] = false,
						["?"] = false,
					},
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
