return {
  'lukas-reineke/indent-blankline.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local ibl = require('ibl')

    ibl.setup({
      indent = { char = '│' },
      scope = {
        show_start = false,
        show_end = false
      }
    })
  end
}
