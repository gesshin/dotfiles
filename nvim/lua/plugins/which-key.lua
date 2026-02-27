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
			{ "<leader>s", group = "sessions", icon = { icon = "", hl = "ThemePink" } },
			{ "<leader>ss" },
			{ "<leader>sr" },
			{ "<leader>sf" },
      -- Explorer
			{ "<leader>e", group = "explorer", icon = { icon = "", hl = "ThemeOrange" } },
			{ "<leader>ee" },
      -- Picker
			{ "<leader>f", group = "find", icon = { icon = "", hl = "ThemeGreen" } },
			{ "<leader>ff" },
			{ "<leader>fr" },
			{ "<leader>fs" },
      -- LSP
			{ "<leader>l", group = "lsp", icon = { icon = "", hl = "ThemePurple" } },
			{ "<leader>ld" },
			{ "<leader>lr" },
			{ "<leader>li" },
			{ "<leader>lt" },
			{ "<leader>lR" },
      -- Git
			{ "<leader>g", group = "git", icon = { icon = "󰊢", hl = "ThemeRed" } },
			{ "<leader>gg" },
			{ "<leader>gv" },
			{ "<leader>gb" },
			{ "<leader>gh", group = "hunk", icon = { icon = "󰊢", hl = "ThemeRed" } },
			{ "<leader>ghh" },
			{ "<leader>ghr" },
			{ "<leader>ghn" },
			{ "<leader>ghp" },
      -- Buffers
			{ "<leader>b", group = "buffers", icon = { icon = "󰈔", hl = "ThemeBlue" } },
			{ "<leader>bb" },
			{ "<leader>bx" },
      -- Windows
			{ "<leader>w", group = "windows", icon = { icon = "", hl = "ThemeComment" } },
			{ "<leader>wv" },
			{ "<leader>wh" },
			{ "<leader>we" },
			{ "<leader>wx" },
			-- Configs
			{ "<leader>L", icon = { icon = "", hl = "ThemeFg" } },
			{ "<leader>M", icon = { icon = "", hl = "ThemeFg" } },
			-- Terminal
			{ "<leader>T", icon = { icon = "", hl = "ThemeFg" } },
		})
		-- stylua: ignore end

		which_key.setup({
			triggers = {
				{ "<leader>", mode = "n" },
			},
			plugins = {
				marks = false,
				registers = false,
				spelling = { enabled = false },
				presets = { motions = false },
			},
			win = {
				width = { min = 35, max = 35 },
				height = { max = 25 },
				padding = { 0, 1 },
				col = -1,
				row = -1,
				border = "rounded",
				title = true,
				title_pos = "center",
			},
			layout = {
				width = { min = 35, max = 35 },
			},
			sort = { "manual" },
			icons = {
				separator = "|",
				mappings = true,
				rules = false,
				keys = {
					C = "Ctrl+",
					Esc = "󱊷",
					BS = "󰁮",
					Space = "󱁐",
				},
			},
		})
	end,
}
