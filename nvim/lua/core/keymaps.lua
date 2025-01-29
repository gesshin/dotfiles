-- ---------------------------------------------
-- |           | Keymap    | Action            |
-- ---------------------------------------------
-- | NvimTree  | a         | create            |
-- |           | e         | rename            |
-- |           | x         | cut               |
-- |           | p         | paste             |
-- |           | d         | delete            |
-- |           | Y         | copy path         |
-- |           | <CR>      | open file/dir     |
-- |           | <C-v>     | open vertical     |
-- |           | <BS>      | close directory   |
-- |-----------|-----------|-------------------|
-- | Telescope | <CR>      | open finder       |
-- |           | <C-j>     | next selection    |
-- |           | <C-k>     | prev selection    |
-- |           | <C-c>     | close telescope   |
-- |-----------|-----------|-------------------|
-- | NvimCmp   | <C-Space> | open suggestions  |
-- |           | <C-j>     | next suggestion   |
-- |           | <C-k>     | prev suggestion   |
-- |           | <CR>      | select suggestion |
-- |           | <C-e>     | close suggestions |
--

local mappings = {
  normal = {
    -- General
    ['<C-u>'] = { '<C-u>zz' }, -- Scroll up and center
    ['<C-d>'] = { '<C-d>zz' }, -- Scroll down and center
    ['n']     = { 'nzzzv' }, -- Next search match and center
    ['N']     = { 'Nzzzv' }, -- Prev search match and center
    ['x']     = { '"_x' }, -- Delete character without overwrite register
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
    ['<leader>ff'] = { ':Telescope find_files<CR>' , 'Find file in cwd'         },
    ['<leader>fs'] = { ':Telescope live_grep<CR>'  , 'Find string in cwd'       },
    ['<leader>fc'] = { ':Telescope grep_string<CR>', 'Find string under cursor' },
    -- LSP
    -- Git
    -- Buffers
    ['<Tab>']      = { ':bnext<CR>'              , 'Cycle next buffer'    },
    ['<S-Tab>']    = { ':bprevious<CR>'          , 'Cycle prev buffer'    },
    ['<leader>bb'] = { ':BufferLinePick<CR>'     , 'Pick an open buffer'  },
    ['<leader>bc'] = { ':BufferLinePickClose<CR>', 'Close an open buffer' },
    ['<leader>bx'] = { ':bdelete<CR>'            , 'Close current buffer' },
    -- Windows
    ['<leader>wv'] = { '<C-w>v'    , 'Split window vertically'   },
    ['<leader>wh'] = { '<C-w>s'    , 'Split window horizontally' },
    ['<leader>we'] = { '<C-w>='    , 'Make windows equal size'   },  
    ['<leader>wx'] = { ':close<CR>', 'Close current window'      },
  },
  insert = {
    ['jk'] = { '<ESC>' },
  },
  visual = {
    ['<'] = { '<gv' },
    ['>'] = { '>gv' },
  }
}

local function set_keymaps(mappings)
  for m, maps in pairs(mappings) do
    for key, maps in pairs(maps) do
      local mode = m:sub(1,1)
      local lhs = key
      local rhs = maps[1]
      local opts = {
        desc = maps[2],
        noremap = true,
        silent = true
      }

      vim.api.nvim_set_keymap(mode, lhs, rhs, opts) 
    end
  end
end

set_keymaps(mappings)
