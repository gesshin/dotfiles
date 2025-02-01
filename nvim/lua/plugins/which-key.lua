return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  config = function()
    local which_key = require('which-key')

    which_key.add({
      -- Individual
      { '<leader>r', icon = { icon = '', hl = 'DraculaFg' } },
      { '<leader>/', icon = { icon = '', hl = 'DraculaFg' } },
      { '<leader>L', icon = { icon = '', hl = 'DraculaFg' } },
      { '<leader>M', icon = { icon = '', hl = 'DraculaFg' } },
      -- Groups
      { '<leader>s', group = 'sessions', icon = { icon = '', hl = 'DraculaPink'   } },
      { '<leader>e', group = 'explorer', icon = { icon = '', hl = 'DraculaOrange' } },
      { '<leader>f', group = 'find'    , icon = { icon = '', hl = 'DraculaGreen'  } },
      { '<leader>l', group = 'lsp'     , icon = { icon = '', hl = 'DraculaPurple' } },
      { '<leader>g', group = 'git'     , icon = { icon = '󰊢', hl = 'DraculaRed'    } },
      { '<leader>b', group = 'buffers' , icon = { icon = '󰈔', hl = 'DraculaCyan'   } },
      { '<leader>w', group = 'windows' , icon = { icon = '', hl = 'DraculaLine'   } },
    })

    which_key.setup({
      triggers = {
        { '<leader>', mode = 'n' }
      },
      plugins = {
        marks = false,
        registers = false,
        spelling = { enabled = false },
        presets = { motions = false }
      },
      win = {
        width = { min = 45, max = 45 },
        height = { max = 25 },
        padding = { 0, 1 },
        col = -1,
        row = -1,
        border = 'rounded',
        title = true,
        title_pos = 'center'
      },
      layout = {
        width = { min = 45, max = 45 }
      },
      sort = { 'manual' },
      icons = {
        separator = '|',
        mappings = true,
        rules = false,
        keys = {
          C = 'Ctrl+',
          Esc = '󱊷',
          BS = '󰁮',
          Space = '󱁐'
        }
      }
    })
  end
}
