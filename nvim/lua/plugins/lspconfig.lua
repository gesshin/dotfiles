return {
  'neovim/nvim-lspconfig',
  tag = 'v2.2.0',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = 'hrsh7th/cmp-nvim-lsp',
  config = function()
    local cmp_nvim_lsp = require('cmp_nvim_lsp')

    local lsp = vim.lsp
    local diagnostic = vim.diagnostic

    lsp.config('*', {
      capabilities = cmp_nvim_lsp.default_capabilities()
    })

    diagnostic.config({
      virtual_text = true,
      signs = {
        text = {
          [diagnostic.severity.ERROR] = '',
          [diagnostic.severity.WARN] = '',
          [diagnostic.severity.INFO] = '',
          [diagnostic.severity.HINT] = '',
        }
      }
    })
  end
}
