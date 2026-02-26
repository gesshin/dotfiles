-- Replaces the default cmdline and notifications with floating popups
return {
  'folke/noice.nvim',
  tag = 'v4.10.0',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify'
  },
  event = 'VeryLazy',
  config = function()
    local noice = require('noice')

    noice.setup({
      cmdline = {
        enabled = true,
        view = 'cmdline_popup',
        format = {
          cmdline     = { title = 'vim',    pattern = '^:'         , icon = ''  , lang = 'vim'   },
          filter      = { title = 'shell',  pattern = '^:%s*!'     , icon = '$'  , lang = 'bash'  },
          search_down = { title = 'search', pattern = '^/'         , icon = ' ', lang = 'regex' },
          search_up   = { title = 'search', pattern = '^%?'        , icon = ' ', lang = 'regex' },
          help        = { title = 'help',   pattern = '^:%s*h%s+'  , icon = '󰋖'  , lang = 'vim'   },
          lua         = { title = 'lua',    pattern = '^:%s*lua%s+', icon = ''  , lang = 'lua'   },
        },
      },
      messages = {
        enabled = true,
        view = 'notify',
        view_error = 'notify',
        view_warn = 'notify',
        view_history = 'messages',
        view_search = 'virtualtext',
      },
    })
  end
}
