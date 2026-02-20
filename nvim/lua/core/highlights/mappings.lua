local M = {}

M.base = {
  ThemeBg      = { fg = 'bg'      },
  ThemeFg      = { fg = 'fg'      },
  ThemeLine    = { fg = 'line'    },
  ThemeComment = { fg = 'comment' },
  ThemeRed     = { fg = 'red'     },
  ThemeOrange  = { fg = 'orange'  },
  ThemeYellow  = { fg = 'yellow'  },
  ThemeGreen   = { fg = 'green'   },
  ThemeBlue    = { fg = 'blue'    },
  ThemePurple  = { fg = 'purple'  },
  ThemePink    = { fg = 'pink'    },
}

M.alpha = {
  AlphaHeader   = { fg = "fg"  },
  AlphaFooter   = { fg = "red" },
  AlphaButtons  = { fg = "fg"  },
  AlphaShortcut = { fg = "red" },
}

M.which_key = {
  WhichKeyNormal    = { fg = "fg"      },
  WhichKeyTitle     = { fg = "purple"  },
  WhichKeyBorder    = { fg = "comment" },
  WhichKey          = { fg = "purple"  },
  WhichKeySeparator = { fg = "comment" },
  WhichKeyIcon      = { fg = "purple"  },
  WhichKeyDesc      = { fg = "fg"      },
  WhichKeyGroup     = { fg = "fg"      },
}

M.cmp = {
  FloatBorder           = { fg = "fg"      },
  NormalFloat           = { bg = "bg"      },
  PmenuThumb            = { bg = "comment" },
  CmpItemAbbr           = { fg = "comment" },
  CmpItemAbbrDeprecated = { fg = "comment" },
  CmpItemAbbrMatch      = { fg = "blue"    },
  CmpItemAbbrMatchFuzzy = { fg = "blue"    },
  CmpItemMenu           = { fg = "comment" },
}

M.indent_blankline = {
  IblScope = { fg = "fg" },
}

M.bufferline = {
  BufferLineIndicatorSelected = { fg = "green", bg = "bg" },
}

M.diagnostic = {
  DiagnosticSignError        = { fg = "red"    },
  DiagnosticSignWarn         = { fg = "yellow" },
  DiagnosticSignInfo         = { fg = "blue"   },
  DiagnosticSignHint         = { fg = "blue"   },
  DiagnosticVirtualTextError = { fg = "red"    },
  DiagnosticVirtualTextWarn  = { fg = "yellow" },
  DiagnosticVirtualTextInfo  = { fg = "blue"   },
  DiagnosticVirtualTextHint  = { fg = "blue"   },
}

return M
