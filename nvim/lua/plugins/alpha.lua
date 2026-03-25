return {
  'goolord/alpha-nvim',
  event = { 'VimEnter' },
  config = function()
    local lazy = require('lazy')
    local alpha = require('alpha')

    local logo = {
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
    }

    local function button(sc, txt, keybind, keybind_opts)
      local sc_ = sc:gsub('%s', ''):gsub('SPC', '<leader>')

      local opts = {
        position = 'center',
        shortcut = sc,
        cursor = 3,
        width = 50,
        align_shortcut = 'right',
        hl = 'AlphaButton',
        hl_shortcut = 'AlphaShortcut'
      }

      if keybind then
        keybind_opts = vim.F.if_nil(keybind_opts, { noremap = true, silent = true, nowait = true })
        opts.keymap = { 'n', sc_, keybind, keybind_opts }
      end

      local function on_press()
        local key = vim.api.nvim_replace_termcodes(keybind or sc_ .. '<Ignore>', true, false, true)
        vim.api.nvim_feedkeys(key, 't', false)
      end

      return {
        type = 'button',
        val = txt,
        on_press = on_press,
        opts = opts
      }
    end

    local header = {
      type = 'text',
      val = logo,
      opts = {
        position = 'center',
        hl = 'AlphaHeader'
      }
    }

    local header_footer = {
      type = 'text',
      val = 'TOHA HEAVY INDUSTRIES',
      opts = {
        position = 'center',
        hl = 'AlphaFooter'
      }
    }

    local footer = {
      type = 'text',
      val = 'AUTHORITY DOWNLOADED ' .. lazy.stats().loaded .. ' ENTITIES INTO BASE REALITY',
      opts = {
        position = 'center',
        hl = 'AlphaFooter'
      }
    }

    local buttons = {
      type = 'group',
      val = {
        button('s', '  Continue', ':SessionRestore<CR>'      ),
        button('a', '  New'     , ':enew<CR>'                ),
        button('e', '  Explorer', ':NvimTreeToggle<CR>'      ),
        button('f', '  Find'    , ':Telescope find_files<CR>'),
        button('l', '󰒲  Settings', ':Lazy<CR>'                ),
        button('q', '󰜎  Quit'    , ':qa<CR>'                  )
      },
      opts = {
        spacing = 1
      }
    }

    local section = {
      header = header,
      header_footer = header_footer,
      footer = footer,
      buttons = buttons
    }

    local config = {
      layout = {
        { type = 'padding', val = 2 },
        section.header,
        section.header_footer,
        { type = 'padding', val = 2 },
        section.buttons,
        { type = 'padding', val = 1 },
        section.footer
      },
      opts = {
        margin = 5
      }
    }

    alpha.setup(config)

    vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
  end
}
