return {
  'lukas-reineke/indent-blankline.nvim',
  tag = 'v3.9.0',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local ibl = require('ibl')

    ibl.setup({
      indent = { char = '│' },
      scope = { enabled = true }
    })
  end
}
