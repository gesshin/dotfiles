return {
  'akinsho/bufferline.nvim',
  tag = 'v4.9.1',
  dependencies = 'nvim-tree/nvim-web-devicons',
  event = { 'VeryLazy' },
  init = function()
    vim.o.mousemoveevent = true
  end,
  config = function()
    local bufferline = require('bufferline')

    bufferline.setup({
      options = {
        mode = 'buffers',
        style_preset = bufferline.style_preset.no_italic,
        always_show_bufferline = true,
        separator_style = { '', '' },
        tab_size = 25,
        hover = {
          enabled = true,
          delay = 100,
          reveal = { 'close' }
        },
        offsets = {
          {
            filetype = 'NvimTree',
            text = '',
            highlight = 'Directory',
            text_align = 'center'
          }
        },
        sort_by = 'directory'
      }
    })
  end
}
