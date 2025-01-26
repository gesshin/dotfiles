return {
  'nvim-lualine/lualine.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local lualine = require('lualine')

    lualine.setup({
      options = {
        theme = 'dracula',
        component_separators = '|',
        section_separators = '',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = {
          {
            'branch',
            icon = ''
          },
          { 'diff' },
          { 'diagnostics' }
        },
        lualine_c = { 'filename' },
        lualine_x = {
          {
            function()
              return vim.bo.fileencoding:upper()
            end
          },
          {
            function()
              return vim.bo.fileformat:upper()
            end
          },
          { 'filetype' }
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}      
      },
      extensions = { 'fugitive' }
    })
  end
}

