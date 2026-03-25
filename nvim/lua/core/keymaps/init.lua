local mappings = require('core.keymaps.mappings')

--- Takes a table of mappings and automatically configures them as vim keymaps
--- @param mapping table Table mapping where each mode maps to a table of [keybinds] mapped to {command, description} tuples
--- @param opts? table Optional arguments passed to vim.keymap.set (e.g., {silent = true, buffer = bufnr})
local function set_keymaps(mapping, opts)
  opts = opts or {}

  for mode_name, mode_keymap_group in pairs(mapping) do
    for keymap, cmd_desc_tbl in pairs(mode_keymap_group) do
      local mode = mode_name:sub(1,1)
      local cmd = cmd_desc_tbl[1]

      opts.desc = cmd_desc_tbl[2]
      opts.noremap = true
      opts.silent = true

      vim.keymap.set(mode, keymap, cmd, opts)
    end
  end
end

set_keymaps(mappings.vim)
set_keymaps(mappings.plugin)
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('LspKeymaps', {}),
  callback = function(event)
    set_keymaps(mappings.lsp, { buffer = event.buf })
  end
})
