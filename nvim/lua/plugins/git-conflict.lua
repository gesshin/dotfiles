return {
  'akinsho/git-conflict.nvim',
  tag = 'v2.1.0',
  event = 'BufReadPre',
  config = function()
    local git_conflict = require('git-conflict')

    git_conflict.setup()
  end
}
