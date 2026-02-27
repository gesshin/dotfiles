-- UI for messages, command-line prompts and the popup menu
return {
	"folke/noice.nvim",
	tag = "v4.10.0",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	event = "VeryLazy",
	config = function()
		local noice = require("noice")

		noice.setup({
			cmdline = {
				enabled = true,
				view = "cmdline_popup",
				format = {
					input = { view = "cmdline" },
					cmdline = {
						title = "vim",
						pattern = "^:",
						icon = "",
						lang = "vim",
						view = "cmdline_popup",
					},
					filter = {
						title = "shell",
						pattern = "^:%s*!",
						icon = "$",
						lang = "bash",
						view = "cmdline_popup",
					},
					help = {
						title = "help",
						pattern = "^:%s*h%s+",
						icon = "󰋖",
						lang = "vim",
						view = "cmdline_popup",
					},
					lua = {
						title = "lua",
						pattern = "^:%s*lua%s+",
						icon = "",
						lang = "lua",
						view = "cmdline_popup",
					},
					substitute = {
						title = "substitute",
						pattern = "^:%s*%%?s/",
						icon = " 󰓡",
						lang = "regex",
						view = "cmdline_popup",
					},
					search_down = {
						title = "search",
						pattern = "^/",
						icon = " ",
						lang = "regex",
						view = "cmdline",
					},
					search_up = {
						title = "search",
						pattern = "^%?",
						icon = " ",
						lang = "regex",
						view = "cmdline",
					},
				},
			},
			lsp = {
				progress = { enabled = true, view = "cmdline" },
			},
			messages = {
				enabled = true,
				view = "notify",
				view_error = "notify",
				view_warn = "notify",
				view_history = "messages",
				view_search = "virtualtext",
			},
		})
	end,
}
