return {
  'kylechui/nvim-surround',
  tag = 'v3.1.2',
  event = { 'VeryLazy' },
  config = function()
    local nvim_surround = require('nvim-surround')

    nvim_surround.setup()
  end
}
