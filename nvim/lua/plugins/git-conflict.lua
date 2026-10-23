-- Visualize and resolve Git merge conflicts
vim.pack.add({
	{ src = "https://github.com/akinsho/git-conflict.nvim", version = "v2.1.0" },
})

local git_conflict = require("git-conflict")

git_conflict.setup()
