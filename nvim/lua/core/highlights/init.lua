local themes = require('core.highlights.themes')
local mappings = require('core.highlights.mappings')

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

vim.api.nvim_create_autocmd('VimEnter', {
  group = vim.api.nvim_create_augroup('Colorscheme', {}),
  callback = function()
    local theme = vim.env.GLOBAL_THEME
    local colorscheme = theme

    vim.o.background = 'dark'

    vim.cmd.colorscheme(colorscheme)
    set_highlights(theme, mappings.base)
    set_highlights(theme, mappings.alpha)
    set_highlights(theme, mappings.which_key)
    set_highlights(theme, mappings.blink)
    set_highlights(theme, mappings.indent_blankline)
    set_highlights(theme, mappings.bufferline)
    set_highlights(theme, mappings.diagnostic)
  end
})
