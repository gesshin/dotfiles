-- Collection of quality of life plugins
return {
	"folke/snacks.nvim",
	tag = "v2.23.0",
	event = "VimEnter",
	config = function()
		local cmd = vim.cmd
		local snacks = require("snacks")

		local dashboard_img = table.concat({
			"                                                            ",
			"           ███████████████               ██████████████████ ",
			"           ███████████████                       ██         ",
			"           ███████████████               ██████████████████ ",
			"           ███████████████               ██              ██ ",
			"           ███████████████               ██████████████████ ",
			"           ███████████████                   ▄██▀██▀██▄     ",
			"           ███████████████                 ▄██▀  ██  ▀██▄   ",
			"           ███████████████               ▄██▀    ██    ▀██▄ ",
			"           ███████████████                                  ",
			"           ███████████████               ██████████████████ ",
			"           ███████████████                    ██    ██      ",
			"           █████████████████████████     ██████████████████ ",
			"           █████████████████████████     ██              ██ ",
			"           █████████████████████████     ██████████████████ ",
			"           █████████████████████████          ██    ██      ",
			"           █████████████████████████     ██████████████████ ",
			"           █████████████████████████                        ",
			"           █████████████████████████     ▀▀▀▀▀▀▀▀██▀▀▀▀▀▀▀▀ ",
			"           █████████████████████████     ▀▀▀▀▀▀▀▀██▀▀▀▀▀▀▀▀ ",
			"           █████████████████████████     ██████████████████ ",
			"           ███████████████▀▀▀▀▀▀▀▀▀▀     ██              ██ ",
			"           ███████████████               ██████████████████ ",
			"          ▗███████████████               ▄▄▄▄▄▄▄▄██▄▄▄▄▄▄▄▄ ",
			"         ▗████████████████               ▄▄▄▄▄▄▄▄██▄▄▄▄▄▄▄▄ ",
			"        ▗█████████████████                                  ",
			"       ▗██████████████████               ██████████████████ ",
			"      ▗███████████████████                       ██         ",
			"     ▗████████████████████                       ██         ",
			"    ▗█████████████████████                       ██         ",
			"   ▗██████████████████████                       ██         ",
			"  ▗███████████████████████                       ██         ",
			" ▗████████████████████████               ██████████████████ ",
			"                                                            ",
		}, "\n")
		local dashboard_title = "TOHA HEAVY INDUSTRIES"
		local dashboard_footer = "AUTHORITY DOWNLOADED " .. require("lazy").stats().count .. " INTO BASE REALITY"

		-- Startup screen
		local dashboard = {
			enabled = true,
			preset = {
				header = dashboard_img,
        -- stylua: ignore start
				keys = {
					{ icon = " ", key = "s", desc = "Continue", action = function() cmd("AutoSession restore") end, },
					{ icon = " ", key = "a", desc = "New", action = function() cmd("enew") end, },
					{ icon = " ", key = "f", desc = "Find", action = function() Snacks.picker.files() end, },
					{ icon = "󰒲 ", key = "l", desc = "Settings", action = function() cmd("Lazy") end, },
					{ icon = "󰜎 ", key = "q", desc = "Quit", action = function() cmd("qa") end, },
				},
				-- stylua: ignore end
			},
			sections = {
				{ section = "header" },
				{ title = dashboard_title, hl = "SnacksDashboardTitle", align = "center", padding = 1 },
				{ section = "keys", gap = 1, padding = 1 },
				{ title = dashboard_footer, hl = "SnacksDashboardFooter", align = "center", padding = 1 },
			},
		}

		-- File explorer
		local explorer = {
			enabled = true,
			replace_netrw = true,
			trash = true,
		}

		-- Indent guides and scopes
		local indent = {
			enabled = true,
			char = "│",
			scope = { enabled = true },
			animate = { enabled = false },
		}

		-- Improved vim.ui.input
		local input = {
			enabled = true,
			icon = "",
			win = {
				border = "rounded",
				width = 62,
				row = 0.45,
				col = 0.33,
			},
		}

		-- Open Lazygit in a floating window
		local lazygit = {
			enabled = true,
			configure = false,
		}

		-- Collection of fuzzy finders
		local picker = {
			enabled = true,
			formatters = {
				file = { git_status_hl = false },
			},
			win = {
				list = {
					keys = { ["<c-q>"] = false },
				},
			},
			icons = {
				git = {
					enabled = true,
					staged = "[+]",
					deleted = "[×]",
					ignored = "[⊘]",
					modified = "[~]",
					renamed = "[r]",
					unmerged = "[!]",
					untracked = "[·]",
				},
			},
			sources = {
				explorer = {
					diagnostics = false,
					layout = { layout = { width = 50, position = "right" } },
					win = {
						list = {
							keys = {
								["<BS>"] = false,
								["<c-c>"] = false,
								["<leader>/"] = false,
								["."] = false,
							},
						},
					},
				},
			},
		}

		-- Pretty status column
		local statuscolumn = {
			enabled = true,
			left = { "mark", "sign" },
			right = { "fold", "git" },
		}

		-- Open terminal in a floating/split window
		local terminal = {
			enabled = true,
			win = {
				position = "float",
				width = 0.8,
				height = 0.8,
				border = "rounded",
			},
		}

		snacks.setup({
			dashboard = dashboard,
			explorer = explorer,
			indent = indent,
			input = input,
			lazygit = lazygit,
			picker = picker,
			statuscolumn = statuscolumn,
			terminal = terminal,
		})
	end,
}
