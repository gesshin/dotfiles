local themes = require('core.themes')

local function set_colorscheme(colorscheme)
  vim.cmd.colorscheme(colorscheme)
end

local function set_highlights(palette)
  local set_hl = vim.api.nvim_set_hl

  -- Theme Highlights
  set_hl(0, 'ThemeBg'     , { fg = palette.bg      })
  set_hl(0, 'ThemeFg'     , { fg = palette.fg      })
  set_hl(0, 'ThemeLine'   , { fg = palette.line    })
  set_hl(0, 'ThemeComment', { fg = palette.comment })
  set_hl(0, 'ThemeRed'    , { fg = palette.red     })
  set_hl(0, 'ThemeOrange' , { fg = palette.orange  })
  set_hl(0, 'ThemeYellow' , { fg = palette.yellow  })
  set_hl(0, 'ThemeGreen'  , { fg = palette.green   })
  set_hl(0, 'ThemeBlue'   , { fg = palette.blue    })
  set_hl(0, 'ThemePurple' , { fg = palette.purple  })
  set_hl(0, 'ThemePink'   , { fg = palette.pink    })

  -- Alpha Highlights
  set_hl(0, 'AlphaHeader'  , { fg = palette.fg  })
  set_hl(0, 'AlphaFooter'  , { fg = palette.red })
  set_hl(0, 'AlphaButtons' , { fg = palette.fg  })
  set_hl(0, 'AlphaShortcut', { fg = palette.red })

  -- WhichKey Highlights
  set_hl(0, 'WhichKeyNormal'   , { fg = palette.fg      })
  set_hl(0, 'WhichKeyTitle'    , { fg = palette.purple  })
  set_hl(0, 'WhichKeyBorder'   , { fg = palette.comment })
  set_hl(0, 'WhichKey'         , { fg = palette.purple  })
  set_hl(0, 'WhichKeySeparator', { fg = palette.comment })
  set_hl(0, 'WhichKeyIcon'     , { fg = palette.purple  })
  set_hl(0, 'WhichKeyDesc'     , { fg = palette.fg      })
  set_hl(0, 'WhichKeyGroup'    , { fg = palette.fg      })

  -- NvimCmp Highlights
  set_hl(0, 'FloatBorder'          , { fg = palette.fg      })
  set_hl(0, 'PmenuThumb'           , { bg = palette.comment })
  set_hl(0, 'CmpItemAbbr'          , { fg = palette.comment })
  set_hl(0, 'CmpItemAbbrDeprecated', { fg = palette.comment })
  set_hl(0, 'CmpItemAbbrMatch'     , { fg = palette.blue    })
  set_hl(0, 'CmpItemAbbrMatchFuzzy', { fg = palette.blue    })
  set_hl(0, 'CmpItemMenu'          , { fg = palette.comment })

  -- Indent Blankline Highlights
  set_hl(0, 'IblScope', { fg = palette.fg })

  -- Diagnostic Sign Highlights
  set_hl(0, 'DiagnosticSignError', { fg = palette.red    })
  set_hl(0, 'DiagnosticSignWarn' , { fg = palette.yellow })
  set_hl(0, 'DiagnosticSignInfo' , { fg = palette.blue   })
  set_hl(0, 'DiagnosticSignHint' , { fg = palette.blue   })

  -- Diagnostic Virtual Text Highlights
  set_hl(0, 'DiagnosticVirtualTextError', { fg = palette.red    })
  set_hl(0, 'DiagnosticVirtualTextWarn' , { fg = palette.yellow })
  set_hl(0, 'DiagnosticVirtualTextInfo' , { fg = palette.blue   })
  set_hl(0, 'DiagnosticVirtualTextHint' , { fg = palette.blue   })
end

vim.api.nvim_create_autocmd('VimEnter', {
  group = vim.api.nvim_create_augroup('Colorscheme', {}),
  callback = function()
    local theme = vim.env.GLOBAL_THEME

    set_colorscheme(theme)
    set_highlights(themes[theme])
  end
})
