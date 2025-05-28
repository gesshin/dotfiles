return {
  'mason-org/mason.nvim',
  tag = 'v2.0.0',
  config = function()
    local mason = require('mason')

    mason.setup()
  end
}
