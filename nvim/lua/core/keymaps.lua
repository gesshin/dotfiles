local wk = require('which-key')
local keymap = vim.keymap

keymap.set('i', 'jk', '<ESC>')
keymap.set('n', '<leader>r', ':Lazy<CR>')

-- Use which-key to manage keymaps
wk.add({
  mode = { 'n' },
  icon = { ' ' },
  { '<leader>r' , desc = 'Reload', icon = { icon = '󰑓', color = 'red' } },
  -- Misc Keymaps
  { '<leader>h' , ':nohl<CR>', desc = 'Clear search highlights' },
  { '<leader>+' , '<C-a>'    , desc = 'Increment number'        },
  { '<leader>-' , '<C-x>'    , desc = 'Decrement number'        },
  -- Groupings
  { '<leader>s' , group = 'sessions', icon = { icon = '', color = 'yellow' } },
  { '<leader>e' , group = 'explorer', icon = { icon = '', color = 'orange' } },
  { '<leader>f' , group = 'find'    , icon = { icon = '', color = 'green'  } },
  { '<leader>b' , group = 'buffers' , icon = { icon = '', color = 'azure'  } },
  { '<leader>w' , group = 'windows' , icon = { icon = '', color = 'cyan'   } },
  -- Session Keymaps
  { '<leader>ss', ':SessionSave<CR>'   , desc = 'Save session'    },
  { '<leader>sr', ':SessionRestore<CR>', desc = 'Restore session' },
  { '<leader>sf', ':SessionSearch<CR>' , desc = 'Find session'    },
  -- Explorer Keymaps
  { '<leader>ee', ':NvimTreeToggle<CR>'        , desc = 'Toggle file explorer'                 },
  { '<leader>ef', ':NvimTreeFindFileToggle<CR>', desc = 'Toggle file explorer on current file' },
  { '<leader>er', ':NvimTreeRefresh<CR>'       , desc = 'Refresh file explorer'                },
  { '<leader>ec', ':NvimTreeCollapse<CR>'      , desc = 'Collapse file explorer'               },
  -- Find Keymaps
  { '<leader>ff', ':Telescope find_files<CR>' , desc = 'Find files in cwd'        },
  { '<leader>ft', ':Telescope live_grep<CR>'  , desc = 'Find text in cwd'         },
  { '<leader>fc', ':Telescope grep_string<CR>', desc = 'Find string under cursor' },
  { '<leader>fb', ':Telescope buffers<CR>'    , desc = 'Find open buffers'        },
  -- Buffer Keymaps
  { '<leader>bb', ':BufferLinePick<CR>'     , desc = 'Pick an open buffer'   },
  { '<leader>bn', ':BufferLineCycleNext<CR>', desc = 'Cycle next buffer'     },
  { '<leader>bp', ':BufferLineCyclePrev<CR>', desc = 'Cycle previous buffer' },
  { '<leader>bc', ':BufferLinePickClose<CR>', desc = 'Close an open buffer'  },
  { '<leader>bx', ':bdelete<CR>'            , desc = 'Close current buffer'  },
  -- Window Keymaps
  { '<leader>wv', '<C-w>v'    , desc = 'Split window vertically'   },
  { '<leader>wh', '<C-w>s'    , desc = 'Split window horizontally' },
  { '<leader>we', '<C-w>='    , desc = 'Make windows equal size'   },
  { '<leader>wx', ':close<CR>', desc = 'Close current window'      },
})

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
