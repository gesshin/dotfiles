return {
  'norcalli/nvim-colorizer.lua',
  commit = 'a065833',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local colorizer = require('colorizer')

    colorizer.setup(
      { '*' },
      { names = false }
    )
  end
}
