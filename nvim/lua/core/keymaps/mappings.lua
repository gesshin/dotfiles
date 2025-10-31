local custom = require('core.keymaps.custom')

local M = {}

-- |-----------|------------------|------------------------------|
-- | NvimTree  | a                | create                       |
-- |           | e                | rename                       |
-- |           | x                | cut                          |
-- |           | c                | copy                         |
-- |           | p                | paste                        |
-- |           | d                | delete                       |
-- |           | Y                | copy path                    |
-- |           | <CR>             | open file/dir                |
-- |           | <C-v>            | open vertical                |
-- |           | <C-]>            | set directory                |
-- |           | <Tab>            | close directory              |
-- |-----------|------------------|------------------------------|
-- | Telescope | <CR>             | open buffer                  |
-- |           | <C-j>            | next selection               |
-- |           | <C-k>            | prev selection               |
-- |           | <C-c>            | close telescope              |
-- |-----------|------------------|------------------------------|
-- | NvimCmp   | <Tab>            | next suggestion              |
-- |           | <S-Tab>          | prev suggestion              |
-- |           | <CR>             | select suggestion            |
-- |           | <C-e>            | close suggestions            |
-- |-----------|------------------|------------------------------|
-- | Comment   | gc<motion>       | toggle comment with motion   |
-- |           | gcc              | toggle comment line          |
-- |           | gc               | [visual mode] toggle comment |
-- |-----------|------------------|------------------------------|
-- | Surround  | ys<motion><char> | surround with motion         |
-- |           | ysiw<char>       | surround inner word          |
-- |           | ys<num>w<char>   | surround <num> words         |
-- |           | ysap<char>       | surround paragraph           |
-- |           | yss<char>        | surround line                |
-- |           | ds<char>         | delete surround              |
-- |           | cs<char><char>   | change surround              |
-- |           | S<char>          | [visual mode] surround       |    
-- |-----------|------------------|------------------------------|

M.vim = {
  normal = {
    ['<C-q>'] = { ':wqa<CR>'   , 'Save and quit' },
    ['<C-s>'] = { ':update<CR>', 'Save buffer'   },
    ['<C-u>'] = { '<C-u>zz', 'Scroll up and center'   },
    ['<C-d>'] = { '<C-d>zz', 'Scroll down and center' },
    ['n'] = { 'nzzzv', 'Next search match and center' },
    ['N'] = { 'Nzzzv', 'Prev search match and center' },
    ['x'] = { '"_x', 'Delete w/o overwriting register' },
  },
  insert = {
    ['<C-c>'] = { '<Esc>', 'Convenient escape' },
  },
  visual = {
    ['<C-c>'] = { '<Esc>', 'Convenient escape' },
    ['<'] = { '<gv', 'Stay in visual mode on left indent'  },
    ['>'] = { '>gv', 'Stay in visual mode on right indent' },
  }
}

M.plugin = {
  normal = {
    -- Configs
    ['<leader>L'] = { ':Lazy<CR>' , 'Open Lazy UI'  },
    ['<leader>M'] = { ':Mason<CR>', 'Open Mason UI' },
    -- AutoSession
    ['<leader>ss'] = { ':SessionSave<CR>'   , 'Save session'    },
    ['<leader>sr'] = { ':SessionRestore<CR>', 'Restore session' },
    ['<leader>sf'] = { ':SessionSearch<CR>' , 'Find session'    },
    -- NvimTree
    ['<leader>ee'] = { ':NvimTreeToggle<CR>'        , 'Toggle explorer'         },
    ['<leader>ef'] = { ':NvimTreeFindFileToggle<CR>', 'Toggle explorer on file' },
    ['<leader>er'] = { ':NvimTreeRefresh<CR>'       , 'Refresh tree'            },
    ['<leader>ex'] = { ':NvimTreeCollapse<CR>'      , 'Close explorer'          },
    -- Telescope
    ['<leader>ff'] = { ':Telescope find_files<CR>', 'Find file in cwd'   },
    ['<leader>fs'] = { ':Telescope live_grep<CR>' , 'Find string in cwd' },
    ['<leader>fo'] = { ':Telescope oldfiles<CR>'  , 'Find old file'      },
    ['<leader>fb'] = { ':Telescope buffers<CR>'   , 'Find open buffer'   },
    -- Git
    ['<leader>gg' ] = { ':LazyGit<CR>'              , 'Open lazygit'      },
    ['<leader>gb' ] = { ':Gitsigns blame_line<CR>'  , 'Toggle blame line' },
    ['<leader>ghh'] = { ':Gitsigns preview_hunk<CR>', 'Preview git hunk'  },
    ['<leader>ghn'] = { ':Gitsigns next_hunk<CR>'   , 'Next git hunk'     },
    ['<leader>ghp'] = { ':Gitsigns prev_hunk<CR>'   , 'Prev git hunk'     },
    ['<leader>ghr'] = { ':Gitsigns reset_hunk<CR>'  , 'Restore git hunk'  },
    -- Buffers
    ['<Tab>']      = { ':BufferLineCycleNext<CR>' , 'Cycle next buffer'    },
    ['<S-Tab>']    = { ':BufferLineCyclePrev<CR>' , 'Cycle prev buffer'    },
    ['<leader>bb'] = { ':BufferLinePick<CR>'      , 'Pick an open buffer'  },
    ['<leader>bc'] = { ':BufferLinePickClose<CR>' , 'Close an open buffer' },
    ['<leader>bx'] = { custom.close_current_buffer, 'Close current buffer' },
    -- Windows
    ['<leader>wv'] = { '<C-w>v'    , 'Split window vertically'   },
    ['<leader>wh'] = { '<C-w>s'    , 'Split window horizontally' },
    ['<leader>we'] = { '<C-w>='    , 'Make windows equal size'   },
    ['<leader>wx'] = { ':close<CR>', 'Close current window'      },
  }
}

M.lsp = {
  normal = {
    ['<leader>ld'] = { ':Telescope lsp_definitions<CR>'     , 'Go to definition'      },
    ['<leader>lr'] = { ':Telescope lsp_references<CR>'      , 'Go to references'      },
    ['<leader>li'] = { ':Telescope lsp_implementations<CR>' , 'Go to implementation'  },
    ['<leader>lt'] = { ':Telescope lsp_type_definitions<CR>', 'Go to type definition' },
  }
}

return M
