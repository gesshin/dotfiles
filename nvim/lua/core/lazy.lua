-- Install path for lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Clone lazy.nvim if not already installed
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

-- Prepend lazy.nvim to the runtime path so it can be required
vim.opt.rtp:prepend(lazypath)

-- Bootstrap lazy.nvim, auto-loading all files in lua/plugins/
require("lazy").setup("plugins", {
	checker = {
		enabled = true,
		notify = false, -- suppress update notifications
	},
	change_detection = {
		notify = false, -- suppress config change notifications
	},
})
