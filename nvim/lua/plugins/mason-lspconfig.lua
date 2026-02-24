return {
  'mason-org/mason-lspconfig.nvim',
  tag = 'v2.1.0',
  dependencies = {
    'mason-org/mason.nvim',
    'neovim/nvim-lspconfig',
  },
  config = function()
    local mason_lspconfig = require('mason-lspconfig')

    mason_lspconfig.setup({
      ensure_installed = {
        'gopls',
        'jsonls',
        'lua_ls',
        'ts_ls',
        'yamlls',
      }
    })
  end
}
