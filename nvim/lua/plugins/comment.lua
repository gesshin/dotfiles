return {
  'numToStr/Comment.nvim',
  commit = 'e30b7f2',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local comment = require('Comment')

    comment.setup()
  end
}
