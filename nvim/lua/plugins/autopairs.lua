return {
  'windwp/nvim-autopairs',
  event = { 'InsertEnter' },
  config = function()
    local nvim_autopairs = require('nvim-autopairs')

    nvim_autopairs.setup({
      check_ts = true,
      map_cr = true,
      map_complete = true,
      disable_filetype = { 'TelescopePrompt', 'vim' }
    })
  end
}
