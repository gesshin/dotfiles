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

api.nvim_set_hl(0, 'AlphaHeader'  , { fg = palette.white })
api.nvim_set_hl(0, 'AlphaFooter'  , { fg = palette.red   })
api.nvim_set_hl(0, 'AlphaButtons' , { fg = palette.white })
api.nvim_set_hl(0, 'AlphaShortcut', { fg = palette.red   })

api.nvim_set_hl(0, 'WhichKeyIconGrey'  , { fg = palette.grey   })
api.nvim_set_hl(0, 'WhichKeyNormal'    , { fg = palette.white  })
api.nvim_set_hl(0, 'WhichKeyIconBlue'  , { fg = palette.blue   })
api.nvim_set_hl(0, 'WhichKeyIconCyan'  , { fg = palette.cyan   })
api.nvim_set_hl(0, 'WhichKeyIconGreen' , { fg = palette.green  })
api.nvim_set_hl(0, 'WhichKeyIconOrange', { fg = palette.orange })
api.nvim_set_hl(0, 'WhichKeyIconAzure' , { fg = palette.pink   })
api.nvim_set_hl(0, 'WhichKeyIconPurple', { fg = palette.purple })
api.nvim_set_hl(0, 'WhichKeyIconRed'   , { fg = palette.red    })
api.nvim_set_hl(0, 'WhichKeyIconYellow', { fg = palette.yellow })

api.nvim_set_hl(0, 'WhichKeyTitle'     , { fg = palette.purple })
api.nvim_set_hl(0, 'WhichKeyBorder'    , { fg = palette.blue   })
api.nvim_set_hl(0, 'WhichKey'          , { fg = palette.purple })
api.nvim_set_hl(0, 'WhichKeySeparator' , { fg = palette.blue   })
api.nvim_set_hl(0, 'WhichKeyIcon'      , { fg = palette.purple })
api.nvim_set_hl(0, 'WhichKeyDesc'      , { fg = palette.white  })
api.nvim_set_hl(0, 'WhichKeyGroup'     , { fg = palette.white  })

return palette

