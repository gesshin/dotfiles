return {
  'numToStr/Comment.nvim',
  event = 'VeryLazy',
  config = function()
    local comment = require('Comment')

    comment.setup()
  end
}
