-- Automatically reopen the files and windows you had open
vim.pack.add({
	{ src = "https://github.com/rmagatti/auto-session", version = "6cde3874a9283c2db55627acca5f28e4fa402320" },
})

local auto_session = require("auto-session")

auto_session.setup({
	auto_restore = false, -- Enables/disables auto restoring session on start
	suppressed_dirs = { -- Suppress session restore/create in certain directories
		"/",
		"~/",
		"~/Downloads",
		"~/Documents",
		"~/Desktop",
	},
})
