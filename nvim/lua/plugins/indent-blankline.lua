return {
  'lukas-reineke/indent-blankline.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local ibl = require('ibl')
    ibl.setup({
      indent = { char = '|' },
      whitespace = { remove_blankline_trail = false },
      scope = { enabled = false }
    })
  end
}

