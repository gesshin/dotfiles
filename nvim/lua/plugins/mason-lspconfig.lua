return {
  'mason-org/mason-lspconfig.nvim',
  tag = 'v2.0.0',
  dependencies = {
    'mason-org/mason.nvim',
    'neovim/nvim-lspconfig',
  },
  config = function()
    local mason_lspconfig = require('mason-lspconfig')

    mason_lspconfig.setup({
      ensure_installed = {
        'tailwindcss',
        'dockerls',
        'html',
        'ts_ls',
        'jsonls',
        'lua_ls',
        'ruby_lsp',
        'yamlls',
      }
    })
  end
}
