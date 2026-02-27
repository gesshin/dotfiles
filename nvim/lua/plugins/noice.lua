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
				format = { -- Customize specific cmdline formats (title, pattern, icon, lang, view)
					input = { view = "cmdline" },
					cmdline = { view = "cmdline_popup" },
					search_up = { view = "cmdline" },
					search_down = { view = "cmdline" },
					filter = false,
					lua = false,
					help = false,
				},
			},
			views = {
				confirm = { -- Customize the confirm view
					border = {
						style = "rounded",
						text = {
							top = { { " Confirm ", "NoiceConfirmTitle" } },
						},
					},
					position = { row = "49%", col = "50%" },
					size = { height = "auto", width = "auto" },
				},
				cmdline_popup = { -- Customize the cmdline_popup view
					border = {
						style = "rounded",
						text = {
							top = { { " Cmdline ", "NoiceCmdlinePopupTitle" } },
						},
					},
					position = { row = "49%", col = "51%" },
					size = { height = "auto", width = 60 },
				},
			},
			lsp = { -- Customize the views for lsp info
				progress = { enabled = true, view = "cmdline" },
			},
			messages = { -- Customize the views for messages
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
