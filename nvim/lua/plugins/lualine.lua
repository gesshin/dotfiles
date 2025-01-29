return {
  'nvim-lualine/lualine.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local lualine = require('lualine')
    
    local branch = {
      'branch',
      icon = ''
    }

    local filename = {
      'filename',
      file_status = true,
      path = 1
    }

    local encoding = {
      'encoding',
      fmt = function()
        return vim.bo.fileencoding:upper()
      end
    }

    local fileformat = {
      'fileformat',
      fmt = function()
        return vim.bo.fileformat:upper()
      end
    }

    lualine.setup({
      options = {
        theme = 'dracula',
        component_separators = '|',
        section_separators = '',
        disabled_filetypes = {
          statusline = { 'alpha', 'NvimTree' }
        }
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { branch, 'diff', 'diagnostics' },
        lualine_c = { filename },
        lualine_x = { encoding, fileformat, 'filetype' },
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
