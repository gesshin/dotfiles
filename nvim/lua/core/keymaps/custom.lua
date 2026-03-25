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

return M
