return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'hrsh7th/cmp-nvim-lsp',
  },
  config = function()
    local mason = require('mason')
    local mason_lspconfig = require('mason-lspconfig')

    mason.setup()

    mason_lspconfig.setup({
      ensure_installed = {
        'tailwindcss',
        'dockerls',
        'html',
        'ts_ls',
        'jsonls',
        'lua_ls',
        'ruby_lsp',
        'rust_analyzer',
        'yamlls',
      }
    })
  end
}
