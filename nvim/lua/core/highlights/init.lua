local themes = require("core.highlights.themes")
local mappings = require("core.highlights.mappings")

--- Takes a table of mappings and automatically configures them as vim highlight groups
---
--- @param theme string Name of the selected theme used to get the corresponding palette
--- @param mapping table Table mapping where each highlight group name is mapped to a highlight definition map
local function set_highlights(theme, mapping)
	local palette = themes[theme]

	for hl_group_name, opts in pairs(mapping) do
		local hl_definition_map = {}
		for k, v in pairs(opts) do
			hl_definition_map[k] = palette[v]
		end

		vim.api.nvim_set_hl(0, hl_group_name, hl_definition_map)
	end
end

vim.api.nvim_create_autocmd("VimEnter", {
	group = vim.api.nvim_create_augroup("Highlights", {}),
	callback = function()
		local theme = vim.env.GLOBAL_THEME
		local colorscheme = theme

		vim.o.background = "dark"

		vim.cmd.colorscheme(colorscheme)
		set_highlights(theme, mappings.base)
		set_highlights(theme, mappings.blink)
		set_highlights(theme, mappings.diagnostic)
		set_highlights(theme, mappings.flash)
		set_highlights(theme, mappings.float)
		set_highlights(theme, mappings.git)
		set_highlights(theme, mappings.noice)
		set_highlights(theme, mappings.snacks)
		set_highlights(theme, mappings.which_key)
	end,
})
