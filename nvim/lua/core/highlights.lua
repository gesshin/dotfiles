-- Dracula Color Palette
local palette = {
  bg      = '#282A36',
  fg      = '#F8F8F2',
  line    = '#44475A',
  grey    = '#ABB2BF',
  comment = '#6272A4',
  red     = '#FF5555',
  orange  = '#FFB86C',
  yellow  = '#F1FA8C',
  green   = '#50FA7B',
  cyan    = '#8BE9FD',
  purple  = '#BD93F9',
  pink    = '#FF79C6',
}

local api = vim.api

-- Dracula Theme Highlights
api.nvim_set_hl(0, 'DraculaBg'     , { fg = palette.black   })
api.nvim_set_hl(0, 'DraculaFg'     , { fg = palette.white   })
api.nvim_set_hl(0, 'DraculaLine'   , { fg = palette.line    })
api.nvim_set_hl(0, 'DraculaComment', { fg = palette.comment })
api.nvim_set_hl(0, 'DraculaRed'    , { fg = palette.red     })
api.nvim_set_hl(0, 'DraculaOrange' , { fg = palette.orange  })
api.nvim_set_hl(0, 'DraculaYellow' , { fg = palette.yellow  })
api.nvim_set_hl(0, 'DraculaGreen'  , { fg = palette.green   })
api.nvim_set_hl(0, 'DraculaCyan'   , { fg = palette.cyan    })
api.nvim_set_hl(0, 'DraculaPurple' , { fg = palette.purple  })
api.nvim_set_hl(0, 'DraculaPink'   , { fg = palette.pink    })

-- Alpha Highlights
api.nvim_set_hl(0, 'AlphaHeader'  , { fg = palette.fg  })
api.nvim_set_hl(0, 'AlphaFooter'  , { fg = palette.red })
api.nvim_set_hl(0, 'AlphaButtons' , { fg = palette.fg  })
api.nvim_set_hl(0, 'AlphaShortcut', { fg = palette.red })

-- WhichKey Highlights
api.nvim_set_hl(0, 'WhichKeyNormal'   , { fg = palette.fg      })
api.nvim_set_hl(0, 'WhichKeyTitle'    , { fg = palette.purple  })
api.nvim_set_hl(0, 'WhichKeyBorder'   , { fg = palette.comment })
api.nvim_set_hl(0, 'WhichKey'         , { fg = palette.purple  })
api.nvim_set_hl(0, 'WhichKeySeparator', { fg = palette.comment })
api.nvim_set_hl(0, 'WhichKeyIcon'     , { fg = palette.purple  })
api.nvim_set_hl(0, 'WhichKeyDesc'     , { fg = palette.fg      })
api.nvim_set_hl(0, 'WhichKeyGroup'    , { fg = palette.fg      })

-- NvimCmp Highlights
api.nvim_set_hl(0, 'CmpItemAbbr'     , { fg = palette.grey })
api.nvim_set_hl(0, 'CmpItemAbbrMatch', { fg = palette.cyan })

-- Diagnostic Highlights
api.nvim_set_hl(0, 'DiagnosticSignError', { fg = palette.red    })
api.nvim_set_hl(0, 'DiagnosticSignWarn' , { fg = palette.yellow })
api.nvim_set_hl(0, 'DiagnosticSignInfo' , { fg = palette.cyan   })
api.nvim_set_hl(0, 'DiagnosticSignHint' , { fg = palette.cyan   })
local diagnostic_signs = { Error = '', Warn = '', Info = '', Hint = '' }
for type, icon in pairs(diagnostic_signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
end
