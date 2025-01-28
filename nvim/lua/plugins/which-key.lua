return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
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
      keys = {
        C = 'Ctrl+',
        Esc = '󱊷',
        BS = '󰁮',
        Space = '󱁐'
      }
    }
  }
}
