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

M.float = {
  NormalFloat = { bg = 'bg' },
  FloatBorder = { fg = 'fg' },
}

M.snacks = {
  SnacksDashboardHeader  = { fg = 'fg'  },
  SnacksDashboardTitle   = { fg = 'red' },
  SnacksDashboardFooter  = { fg = 'fg'  },
  SnacksDashboardIcon    = { fg = 'fg'  },
  SnacksDashboardDesc    = { fg = 'fg'  },
  SnacksDashboardKey     = { fg = 'red' },
  SnacksIndentScope      = { fg = 'fg'  },
}

M.which_key = {
  WhichKeyNormal    = { fg = 'fg'      },
  WhichKeyTitle     = { fg = 'purple'  },
  WhichKeyBorder    = { fg = 'comment' },
  WhichKey          = { fg = 'purple'  },
  WhichKeySeparator = { fg = 'comment' },
  WhichKeyIcon      = { fg = 'purple'  },
  WhichKeyDesc      = { fg = 'fg'      },
  WhichKeyGroup     = { fg = 'fg'      },
}

M.blink = {
  BlinkCmpScrollBarThumb  = { bg = 'comment' },
  BlinkCmpScrollBarGutter = { bg = 'bg'      },
  BlinkCmpMenu            = { bg = 'bg'      },
  BlinkCmpMenuBorder      = { fg = 'fg'      },
  BlinkCmpMenuSelection   = { bg = 'line'    },
  BlinkCmpDoc             = { bg = 'bg'      },
  BlinkCmpDocBorder       = { fg = 'fg'      },
  BlinkCmpLabel           = { fg = 'fg'      },
  BlinkCmpLabelDetail     = { fg = 'fg'      },
  BlinkCmpLabelMatch      = { fg = 'blue'    },
  BlinkCmpLabelDeprecated = { fg = 'comment' },
}

M.bufferline = {
  BufferLineIndicatorSelected = { fg = 'green', bg = 'bg' },
}

M.diagnostic = {
  DiagnosticSignError        = { fg = 'red'    },
  DiagnosticSignWarn         = { fg = 'yellow' },
  DiagnosticSignInfo         = { fg = 'blue'   },
  DiagnosticSignHint         = { fg = 'blue'   },
  DiagnosticVirtualTextError = { fg = 'red'    },
  DiagnosticVirtualTextWarn  = { fg = 'yellow' },
  DiagnosticVirtualTextInfo  = { fg = 'blue'   },
  DiagnosticVirtualTextHint  = { fg = 'blue'   },
}

return M
