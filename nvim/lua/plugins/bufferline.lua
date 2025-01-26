return {
  'akinsho/bufferline.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local bufferline = require('bufferline')
    
    vim.o.mousemoveevent = true

    bufferline.setup({
      options = {
        mode = 'buffers',
        separator_style = { '', '' },
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

