return {
  'saghen/blink.cmp',
  tag = 'v1.9.1',
  dependencies = 'rafamadriz/friendly-snippets',
  event = { 'InsertEnter' },
  config = function()
    local blink_cmp = require('blink.cmp')

    blink_cmp.setup({
      keymap = {
        preset = 'none',
        ['<C-Space>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<CR>']      = { 'accept', 'fallback' },
        ['<C-e>']     = { 'hide', 'fallback' },
        ['<Tab>']     = { 'select_next', 'snippet_forward', 'fallback' },
        ['<S-Tab>']   = { 'select_prev', 'snippet_backward', 'fallback' },
      },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      completion = {
        documentation = {
          auto_show = true,
          window = { border = 'rounded' },
        },
        menu = {
          border = 'rounded',
          draw = {
            columns = {
              { 'label', 'label_description', gap = 1 },
              { 'kind_icon', 'kind', gap = 1 },
            },
          },
        },
      },
    })
  end
}
