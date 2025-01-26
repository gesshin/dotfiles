return {
  'akinsho/bufferline.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  init = function()
    vim.o.mousemoveevent = true
  end,
  config = function()
    local bufferline = require('bufferline')
    
    bufferline.setup({
      options = {
        mode = 'buffers',
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
            text = 'EXPLORER',
            highlight = 'DraculaPurple',
            text_align = 'left'
          }
        }
      }
    })
  end
}

