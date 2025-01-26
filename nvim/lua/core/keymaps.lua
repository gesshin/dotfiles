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
  { '<leader>bb', ':enew<CR>'               , desc = 'Create new buffer'    },
  { '<leader>bp', ':BufferLinePick<CR>'     , desc = 'Pick an open buffer'  },
  { '<leader>bc', ':BufferLinePickClose<CR>', desc = 'Close an open buffer' },
  { '<leader>bx', ':bdelete<CR>'            , desc = 'Close current buffer' },
  -- Window Keymaps
  { '<leader>wv', '<C-w>v'    , desc = 'Split window vertically'   },
  { '<leader>wh', '<C-w>s'    , desc = 'Split window horizontally' },
  { '<leader>we', '<C-w>='    , desc = 'Make windows equal size'   },
  { '<leader>wx', ':close<CR>', desc = 'Close current window'      },
})

-- keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlights' })
-- keymap.set('n', '<leader>+' , '<C-a>'    , { desc = 'Increment number'        })
-- keymap.set('n', '<leader>-' , '<C-x>'    , { desc = 'Decrement number'        })

-- keymap.set('n', '<leader>sv', '<C-w>v'    , { desc = 'Split window vertically'   })
-- keymap.set('n', '<leader>sh', '<C-w>s'    , { desc = 'Split window horizontally' })
-- keymap.set('n', '<leader>se', '<C-w>='    , { desc = 'Make windows equal size'   })
-- keymap.set('n', '<leader>sx', ':close<CR>', { desc = 'Close current window'      })

-- keymap.set('n', '<leader>tt', ':tabnew<CR>'  , { desc = 'Open new tab'                 })
-- keymap.set('n', '<leader>tf', ':tabnew %<CR>', { desc = 'Open new tab on current file' })
-- keymap.set('n', '<leader>tn', ':tabn<CR>'    , { desc = 'Cycle next tab'               })
-- keymap.set('n', '<leader>tp', ':tabp<CR>'    , { desc = 'Cycle previous tab'           })
-- keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close current tab'            })

