return {
  'nvim-tree/nvim-tree.lua',
  dependencies = 'nvim-tree/nvim-web-devicons',
  init = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
  config = function()
    local nvim_tree = require('nvim-tree')

    nvim_tree.setup({
      view = {
        width = 45,
        relativenumber = true
      },
      renderer = {
        indent_markers = { enable = true },
        icons = {
          git_placement = 'after',
          glyphs = {
            folder = {
              arrow_closed = '',
              arrow_open = ''
            },
            git = {
              untracked = '[⋅]',
              staged = '[+]',
              unstaged = '[~]',
              renamed = '[r]',
              deleted = '[×]',
              unmerged = '[!]',
              ignored = '[⊘]'
            }
          }
        }
      },
      actions = {
        open_file = {
          window_picker = { enable = false }
        }
      },
      modified = { enable = true },
      filters = {
        custom = { '\\.git$', '.DS_Store' }
      },
      git = {
        ignore = false
      }
    })
  end
}
