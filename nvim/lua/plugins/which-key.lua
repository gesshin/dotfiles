-- Keymap cheatsheet
return {
	"folke/which-key.nvim",
	tag = "v3.17.0",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 400
	end,
	config = function()
		local which_key = require("which-key")

    -- stylua: ignore start
    which_key.add({
      -- AutoSession
			{ "<leader>s", group = "sessions", icon = { icon = "", hl = "ThemeOrange" } },
			{ "<leader>ss" },
			{ "<leader>sr" },
			{ "<leader>sf" },
      -- Picker
			{ "<leader>f", group = "find", icon = { icon = "", hl = "ThemeGreen" } },
			{ "<leader>ff" },
			{ "<leader>fr" },
			{ "<leader>fs" },
      -- LSP
			{ "<leader>l", group = "lsp", icon = { icon = "", hl = "ThemeBlue" } },
			{ "<leader>ld" },
			{ "<leader>lr" },
			{ "<leader>li" },
			{ "<leader>lt" },
			{ "<leader>lR" },
      -- Git
			{ "<leader>g", group = "git", icon = { icon = "󰊢", hl = "ThemeRed" } },
			{ "<leader>gg" },
			{ "<leader>gc" },
			{ "<leader>gb" },
			{ "<leader>gh", group = "hunk", icon = { icon = "󰊢", hl = "ThemeRed" } },
			{ "<leader>ghh" },
			{ "<leader>ghr" },
			{ "<leader>ghn" },
			{ "<leader>ghp" },
      -- Buffers
			{ "<leader>b", group = "buffers", icon = { icon = "󰈔", hl = "ThemeYellow" } },
			{ "<leader>bb" },
			{ "<leader>bx" },
      -- Windows
			{ "<leader>w", group = "windows", icon = { icon = "", hl = "ThemePink" } },
			{ "<leader>wv" },
			{ "<leader>wh" },
			{ "<leader>we" },
			{ "<leader>wm" },
			{ "<leader>wx" },
      -- File Explorer
      { "<leader>-", icon = { icon = "", hl = "ThemeFg" } },
			-- Configs
			{ "<leader>L", icon = { icon = "", hl = "ThemeFg" } },
			{ "<leader>M", icon = { icon = "", hl = "ThemeFg" } },
		})
		-- stylua: ignore end

		which_key.setup({
			triggers = { -- Set popup menu trigger keymap
				{ "<leader>", mode = "n" },
			},
			plugins = { -- Enables/disables keymap plugins
				marks = false,
				registers = false,
				spelling = { enabled = false },
				presets = {
					operators = false,
					motions = false,
					text_objects = false,
					windows = false,
					nav = false,
					z = false,
					g = false,
				},
			},
			win = { -- Customize the popup menu
				width = { min = 35, max = 35 },
				height = { max = 25 },
				padding = { 0, 1 },
				col = -1,
				row = -1,
				border = "rounded",
				title = true,
				title_pos = "center",
			},
			layout = { -- Customize the popup menu columns
				width = { min = 35, max = 35 },
			},
			sort = { "manual" }, -- Specify the sorting metric for keymaps
			icons = { -- Customize the popup menu icons
				separator = "|",
				mappings = true,
				rules = false,
				keys = {
					Esc = "󱊷",
					BS = "󰁮",
					Space = "󱁐",
				},
			},
		})
	end,
}
