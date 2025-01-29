-- Dracula Color Palette
local palette = {
  black  = '#282A36',
  grey   = '#44475A',
  white  = '#F8F8F2',
  blue   = '#6272A4',
  cyan   = '#8BE9FD',
  green  = '#50FA7B',
  orange = '#FFB86C',
  pink   = '#FF79C6',
  purple = '#BD93F9',
  red    = '#FF5555',
  yellow = '#F1FA8C'
}

-- Highlights
local api = vim.api

api.nvim_set_hl(0, 'DraculaBg'     , { fg = palette.black  })
api.nvim_set_hl(0, 'DraculaLine'   , { fg = palette.grey   })
api.nvim_set_hl(0, 'DraculaFg'     , { fg = palette.white  })
api.nvim_set_hl(0, 'DraculaComment', { fg = palette.blue   })
api.nvim_set_hl(0, 'DraculaCyan'   , { fg = palette.cyan   })
api.nvim_set_hl(0, 'DraculaGreen'  , { fg = palette.green  })
api.nvim_set_hl(0, 'DraculaOrange' , { fg = palette.orange })
api.nvim_set_hl(0, 'DraculaPink'   , { fg = palette.pink   })
api.nvim_set_hl(0, 'DraculaPurple' , { fg = palette.purple })
api.nvim_set_hl(0, 'DraculaRed'    , { fg = palette.red    })
api.nvim_set_hl(0, 'DraculaYellow' , { fg = palette.yellow })

api.nvim_set_hl(0, 'AlphaHeader'  , { link = 'DraculaFg'  })
api.nvim_set_hl(0, 'AlphaFooter'  , { link = 'DraculaRed' })
api.nvim_set_hl(0, 'AlphaButtons' , { link = 'DraculaFg'  })
api.nvim_set_hl(0, 'AlphaShortcut', { link = 'DraculaRed' })

api.nvim_set_hl(0, 'WhichKeyNormal'   , { link = 'DraculaFg'      })
api.nvim_set_hl(0, 'WhichKeyTitle'    , { link = 'DraculaPurple'  })
api.nvim_set_hl(0, 'WhichKeyBorder'   , { link = 'DraculaComment' })
api.nvim_set_hl(0, 'WhichKey'         , { link = 'DraculaPurple'  })
api.nvim_set_hl(0, 'WhichKeySeparator', { link = 'DraculaComment' })
api.nvim_set_hl(0, 'WhichKeyIcon'     , { link = 'DraculaPurple'  })
api.nvim_set_hl(0, 'WhichKeyDesc'     , { link = 'DraculaFg'      })
api.nvim_set_hl(0, 'WhichKeyGroup'    , { link = 'DraculaFg'      })

return palette
