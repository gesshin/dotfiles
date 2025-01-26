return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500

    vim.api.nvim_set_hl(0, 'WhichKeyIconGrey'  , { link = 'DraculaLine'    })
    vim.api.nvim_set_hl(0, 'WhichKeyNormal'    , { link = 'DraculaFg'      })
    vim.api.nvim_set_hl(0, 'WhichKeyIconBlue'  , { link = 'DraculaComment' })
    vim.api.nvim_set_hl(0, 'WhichKeyIconCyan'  , { link = 'DraculaCyan'    })
    vim.api.nvim_set_hl(0, 'WhichKeyIconGreen' , { link = 'DraculaGreen'   })
    vim.api.nvim_set_hl(0, 'WhichKeyIconOrange', { link = 'DraculaOrange'  })
    vim.api.nvim_set_hl(0, 'WhichKeyIconAzure' , { link = 'DraculaPink'    })
    vim.api.nvim_set_hl(0, 'WhichKeyIconPurple', { link = 'DraculaPurple'  })
    vim.api.nvim_set_hl(0, 'WhichKeyIconRed'   , { link = 'DraculaRed'     })
    vim.api.nvim_set_hl(0, 'WhichKeyIconYellow', { link = 'DraculaYellow'  })
    
    vim.api.nvim_set_hl(0, 'WhichKeyTitle'     , { link = 'DraculaPurple'  })
    vim.api.nvim_set_hl(0, 'WhichKeyBorder'    , { link = 'DraculaComment' })
    vim.api.nvim_set_hl(0, 'WhichKey'          , { link = 'DraculaPurple'  })
    vim.api.nvim_set_hl(0, 'WhichKeySeparator' , { link = 'DraculaComment' })
    vim.api.nvim_set_hl(0, 'WhichKeyIcon'      , { link = 'DraculaPurple'  })
    vim.api.nvim_set_hl(0, 'WhichKeyDesc'      , { link = 'DraculaFg'      })
    vim.api.nvim_set_hl(0, 'WhichKeyGroup'     , { link = 'DraculaFg'      })
  end,
  opts = {
    plugins = {
      marks = false,
      registers = false,
      spelling = { enabled = false },
      presets = { motions = false }
    },
    win = {
      width = { min = 45, max = 45 },
      height = { max = 25 },
      padding = { 0, 1 },
      col = -1,
      row = -1,
      border = 'rounded',
      title = true,
      title_pos = 'center'
    },
    layout = {
      width = { min = 45, max = 45 }
    },
    sort = { 'manual' },
    icons = {
      separator = '|',
      mappings = true,
      keys = {
        C = 'Ctrl+',
        Esc = '󱊷',
        BS = '󰁮',
        Space = '󱁐'
      }
    }
  }
}

