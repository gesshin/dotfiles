return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = 'hrsh7th/cmp-nvim-lsp',
  config = function()
    local lspconfig = require('lspconfig')
    local mason_lspconfig = require('mason-lspconfig')
    local cmp_nvim_lsp = require('cmp_nvim_lsp')

    local capabilities = cmp_nvim_lsp.default_capabilities()

    mason_lspconfig.setup_handlers({
      -- default setup handler for installed servers 
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities
        })
      end,
      -- Lua LSP setup config
      ['lua_ls'] = function()
        lspconfig['lua_ls'].setup({
          capabilities = capabilities,
          settings = {
            Lua = {
              diagnostics = {
                globals = { 'vim' }
              },
              completion = {
                callSnippet = 'Replace'
              }
            }
          }
        })
      end
    })
  end
}
