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
-- ---------------------------------------------
local vim_mappings = {
  normal = {
    -- Save buffer
    ['<C-s>'] = { ':update<CR>' },
    -- Vertical scroll and center
    ['<C-u>'] = { '<C-u>zz' },
    ['<C-d>'] = { '<C-d>zz' },
    -- Cycle through search match and center
    ['n'] = { 'nzzzv' },
    ['N'] = { 'Nzzzv' },
    -- Delete w/o overwritting to register
    ['x'] = { '"_x' },
  },
  insert = {
    -- Convenient esc mode
    ['zz'] = { '<ESC>' },
  },
  visual = {
    -- Convenient esc mode
    ['zz'] = { '<ESC>' },
    -- Stay in visual mode after indenting
    ['<'] = { '<gv' },
    ['>'] = { '>gv' },
  }
}

local plugin_mappings = {
  normal = {
    -- General
    ['<leader>L'] = { ':Lazy<CR>' , 'Open Lazy UI'     },
    ['<leader>M'] = { ':Mason<CR>', 'Open Mason UI'    },
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
    ['<leader>ff'] = { ':Telescope find_files<CR>', 'Find file in cwd'         },
    ['<leader>fs'] = { ':Telescope live_grep<CR>' , 'Find string in cwd'       },
    ['<leader>fo'] = { ':Telescope oldfiles<CR>'  , 'Find old file'            },
    ['<leader>fb'] = { ':Telescope buffers<CR>'   , 'Find open buffer'         },
    -- Git
    ['<leader>gg' ] = { ':G<CR>', 'Git status'    },
    ['<leader>gph'] = { ':G push<CR>', 'Git push' },
    ['<leader>gpl'] = { ':G pull<CR>', 'Git pull' },
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
  }
}

local lsp_mappings = {
  normal = {
    ['<leader>ld'] = { ':Telescope lsp_definitions<CR>'     , 'Go to definition'     },
    ['<leader>lr'] = { ':Telescope lsp_references<CR>'      , 'Go to references'     },
    ['<leader>li'] = { ':Telescope lsp_implementations<CR>' , 'Go to implementation' },
    ['<leader>lt'] = { ':Telescope lsp_type_definitions<CR>', 'Go to type'           },
  }
}

local function set_keymaps(mappings, opts)
  opts = opts or {}

  for mode_name, mode_keymap_group in pairs(mappings) do
    for keymap, cmd_desc_tbl in pairs(mode_keymap_group) do
      local mode = mode_name:sub(1,1)
      local cmd = cmd_desc_tbl[1]

      opts.desc = cmd_desc_tbl[2]
      opts.noremap = true
      opts.silent = true

      vim.keymap.set(mode, keymap, cmd, opts)
    end
  end
end

set_keymaps(vim_mappings)
set_keymaps(plugin_mappings)

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(event)
    set_keymaps(lsp_mappings, { buffer = event.buf })
  end
})
