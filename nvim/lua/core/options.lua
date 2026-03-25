local opt = vim.opt

vim.cmd('let g:netrw_liststyle = 3') -- use tree-list style

-- Appearance
opt.termguicolors = true  -- enable terminal colors
opt.background = 'dark'   -- default dark mode
opt.signcolumn = 'yes'    -- enable sign column so text doesn't shift

-- Line Numbering
opt.relativenumber = true
opt.number = true

-- Tabs & Indentations
opt.tabstop = 2                     -- 2 spaces for tabs
opt.shiftwidth = 2                  -- 2 spaces for indent width
opt.expandtab = true                -- expand tab to spaces
opt.autoindent = true               -- keep indent from current line
opt.backspace = 'indent,eol,start'  -- allow backspace on indent, end of line or insert mode start position

-- Search Settings
opt.hlsearch = false  -- turn off highlighting on search
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true  -- including mixed case when searching will enable case-sensitive searching

-- Split Windows
opt.splitright = true -- split horizontal window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- Misc
opt.wrap = false                    -- disable text wrapping
opt.cursorline = true               -- enable cursorline
opt.clipboard:append("unnamedplus") -- use system clipboard
