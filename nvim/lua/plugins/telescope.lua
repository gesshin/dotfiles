return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
  },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')

    telescope.load_extension('fzf')

    telescope.setup({
      defaults = {
        file_ignore_patterns = { '\\.git$', '.DS_Store', 'node_modules' },
        path_display = { 'smart' },
        mappings = {
          i = {
            ['<C-j>'] = actions.move_selection_next,
            ['<C-k>'] = actions.move_selection_previous,
          },
        },
        preview = { treesitter = true }
      },
      pickers = {
        find_files = {
          theme = 'ivy',
          hidden = true
        },
        buffers = {
          theme = 'ivy'
        },
        oldfiles = {
          theme = 'ivy'
        },
        live_grep = {
          theme = 'dropdown'
        },
        lsp_definitions = {
          theme = 'dropdown'
        },
        lsp_references = {
          theme = 'dropdown'
        },
        lsp_implementations = {
          theme = 'dropdown'
        },
        lsp_type_definitions = {
          theme = 'dropdown'
        },
      }
    })
  end
}
