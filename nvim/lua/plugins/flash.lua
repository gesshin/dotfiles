return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  config = function()
    local flash = require('flash')

    flash.setup({
      modes = {
        search = { enabled = true }
      }
    })
  end
}
