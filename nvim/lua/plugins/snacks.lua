return {
  'folke/snacks.nvim',
  tag = 'v2.23.0',
  event = { 'VimEnter' },
  config = function()
    local cmd = vim.cmd
    local snacks = require('snacks')

    local plugin_count = require('lazy').stats().count
    local dashboard_title = 'TOHA HEAVY INDUSTRIES'
    local dashboard_footer = 'AUTHORITY DOWNLOADED ' .. plugin_count .. ' INTO BASE REALITY'

    local dashboard = {
      enabled = true,
      preset = {
        header = table.concat({
          '                                                            ',
          '           ███████████████               ██████████████████ ',
          '           ███████████████                       ██         ',
          '           ███████████████               ██████████████████ ',
          '           ███████████████               ██              ██ ',
          '           ███████████████               ██████████████████ ',
          '           ███████████████                   ▄██▀██▀██▄     ',
          '           ███████████████                 ▄██▀  ██  ▀██▄   ',
          '           ███████████████               ▄██▀    ██    ▀██▄ ',
          '           ███████████████                                  ',
          '           ███████████████               ██████████████████ ',
          '           ███████████████                    ██    ██      ',
          '           █████████████████████████     ██████████████████ ',
          '           █████████████████████████     ██              ██ ',
          '           █████████████████████████     ██████████████████ ',
          '           █████████████████████████          ██    ██      ',
          '           █████████████████████████     ██████████████████ ',
          '           █████████████████████████                        ',
          '           █████████████████████████     ▀▀▀▀▀▀▀▀██▀▀▀▀▀▀▀▀ ',
          '           █████████████████████████     ▀▀▀▀▀▀▀▀██▀▀▀▀▀▀▀▀ ',
          '           █████████████████████████     ██████████████████ ',
          '           ███████████████▀▀▀▀▀▀▀▀▀▀     ██              ██ ',
          '           ███████████████               ██████████████████ ',
          '          ▗███████████████               ▄▄▄▄▄▄▄▄██▄▄▄▄▄▄▄▄ ',
          '         ▗████████████████               ▄▄▄▄▄▄▄▄██▄▄▄▄▄▄▄▄ ',
          '        ▗█████████████████                                  ',
          '       ▗██████████████████               ██████████████████ ',
          '      ▗███████████████████                       ██         ',
          '     ▗████████████████████                       ██         ',
          '    ▗█████████████████████                       ██         ',
          '   ▗██████████████████████                       ██         ',
          '  ▗███████████████████████                       ██         ',
          ' ▗████████████████████████               ██████████████████ ',
          '                                                            ',
        }, '\n'),
        keys = {
          { icon = ' ', key = 's', desc = 'Continue', action = function() cmd('AutoSession restore') end },
          { icon = ' ', key = 'a', desc = 'New'     , action = function() cmd('enew') end                },
          { icon = ' ', key = 'f', desc = 'Find'    , action = function() Snacks.picker.files() end      },
          { icon = '󰒲 ', key = 'l', desc = 'Settings', action = function() cmd('Lazy') end                },
          { icon = '󰜎 ', key = 'q', desc = 'Quit'    , action = function() cmd('qa') end                  },
        },
      },
      sections = {
        { section = 'header' },
        { title = dashboard_title, hl = 'SnacksDashboardTitle', align = 'center', padding = 1 },
        { section = 'keys', gap = 1, padding = 1 },
        { title = dashboard_footer, hl = 'SnacksDashboardFooter', align = 'center', padding = 1 },
      },
    }

    local indent = {
      enabled = true,
      char = '│',
      scope = { enabled = true },
      animate = { enabled = false },
    }

    local lazygit = {
      enabled = true,
      configure = false,
    }

    local picker = {
      enabled = true,
      cwd = vim.fn.getcwd(),
      win = {
        list = {
          keys = { ['<c-q>'] = false },
        },
      },
      icons = {
        git = {
          enabled = true,
          staged = '[+]',
          deleted = '[×]',
          ignored = '[⊘]',
          modified = '[~]',
          renamed = '[r]',
          unmerged = '[!]',
          untracked = '[·]',
        },
      },
      sources = {
        explorer = {
          diagnostics = false,
          layout = { layout = { width = 50, position = 'right' } },
          win = {
            list = {
              keys = { ['<leader>/'] = false },
            },
          },
        },
      },
    }

    local explorer = {
      enabled = true,
      replace_netrw = true,
      trash = true,
    }

    local input = {
      enabled = true,
      win = {
        row = 0.4,
      },
    }

    local scroll = {
      enabled = true,
    }

    snacks.setup({
      dashboard = dashboard,
      indent = indent,
      lazygit = lazygit,
      picker = picker,
      explorer = explorer,
      input = input,
      scroll = scroll,
    })
  end
}
