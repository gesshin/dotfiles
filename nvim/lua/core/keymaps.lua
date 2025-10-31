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

--- Closes the current buffer and switches to the next available buffer
local function custom_close_current_buffer()
  local current_buffer = vim.api.nvim_get_current_buf()

  -- Filter all buffers to exclude special buffers (i.e. nvim-tree buffer)
  local buffers = vim.tbl_filter(function(buffer)
    return vim.bo[buffer].buflisted
  end, vim.api.nvim_list_bufs())

  if #buffers > 1 then
    vim.cmd('bprevious')
  end

  vim.cmd('bdelete ' .. current_buffer)
end

--- Takes a table of mappings and automatically configures them as vim keymaps
--- @param mappings table Table mapping where each mode maps to a table of [keybinds] mapped to {command, description} tuples
--- @param opts? table Optional arguments passed to vim.keymap.set (e.g., {silent = true, buffer = bufnr})
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

local vim_mappings = {
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

local plugin_mappings = {
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
    ['<Tab>']      = { ':bnext<CR>'               , 'Cycle next buffer'    },
    ['<S-Tab>']    = { ':bprevious<CR>'           , 'Cycle prev buffer'    },
    ['<leader>bb'] = { ':BufferLinePick<CR>'      , 'Pick an open buffer'  },
    ['<leader>bc'] = { ':BufferLinePickClose<CR>' , 'Close an open buffer' },
    ['<leader>bx'] = { custom_close_current_buffer, 'Close current buffer' },
    -- Windows
    ['<leader>wv'] = { '<C-w>v'    , 'Split window vertically'   },
    ['<leader>wh'] = { '<C-w>s'    , 'Split window horizontally' },
    ['<leader>we'] = { '<C-w>='    , 'Make windows equal size'   },
    ['<leader>wx'] = { ':close<CR>', 'Close current window'      },
  }
}

local lsp_mappings = {
  normal = {
    ['<leader>ld'] = { ':Telescope lsp_definitions<CR>'     , 'Go to definition'      },
    ['<leader>lr'] = { ':Telescope lsp_references<CR>'      , 'Go to references'      },
    ['<leader>li'] = { ':Telescope lsp_implementations<CR>' , 'Go to implementation'  },
    ['<leader>lt'] = { ':Telescope lsp_type_definitions<CR>', 'Go to type definition' },
  }
}

-- Sets vim, plugin and lsp keymaps
set_keymaps(vim_mappings)
set_keymaps(plugin_mappings)
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('LspKeymaps', {}),
  callback = function(event)
    set_keymaps(lsp_mappings, { buffer = event.buf })
  end
})
