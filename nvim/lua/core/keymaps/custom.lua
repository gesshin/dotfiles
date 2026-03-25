local M = {}

function M.git_conflicts()
	Snacks.picker.pick({
		title = "Git Conflicts",
		finder = function()
			local files = vim.fn.systemlist("git diff --name-only --diff-filter=U")
			local items = {}
			for _, file in ipairs(files) do
				table.insert(items, { text = file, file = file })
			end
			return items
		end,
	})
end

local maximized_win = nil

function M.maximize()
	local win = vim.api.nvim_get_current_win()

	if maximized_win == win then
		maximized_win = nil

		vim.cmd("wincmd =")
		vim.schedule(function()
			vim.cmd("redraw!")
		end)

		vim.api.nvim_set_hl(0, "WinSeparator", { link = "ThemeComment" })
	else
		maximized_win = win
		vim.cmd("wincmd |")

		-- The available height excludes the statusline (1) and cmdheight
		local available_height = vim.o.lines - 1 - vim.o.cmdheight
		vim.api.nvim_win_set_height(win, available_height)

		vim.api.nvim_set_hl(0, "WinSeparator", { link = "ThemeRed" })
	end
end

return M
