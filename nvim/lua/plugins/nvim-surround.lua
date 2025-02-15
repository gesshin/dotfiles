return {
  'kylechui/nvim-surround',
  event = { 'VeryLazy' },
  config = function()
    local nvim_surround = require('nvim-surround')

    nvim_surround.setup()
  end
}
