-- |-----------------|------------------|------------------------|
-- | AutoSession     | <C-d>            | delete session         |
-- |-----------------|------------------|------------------------|
-- | Blink           | <C-e>            | accept suggestion      |
-- |                 | <C-Space>        | open/close suggestions |
-- |                 | <Tab>            | next suggestion        |
-- |                 | <S-Tab>          | prev suggestion        |
-- |-----------------|------------------|------------------------|
-- | GitConflict     | co               | choose ours            |
-- |                 | ct               | choose theirs          |
-- |                 | cb               | choose both            |
-- |                 | cd               | choose none            |
-- |                 | ]x               | next conflict          |
-- |                 | [x               | prev conflict          |
-- |-----------------|------------------|------------------------|
-- | NvimSurround    | ys<motion><char> | surround with motion   |
-- |                 | ds<char>         | delete surround        |
-- |                 | cs<char><char>   | change surround        |
-- |-----------------|------------------|------------------------|
-- | Snacks Explorer | a                | create                 |
-- |                 | r                | rename                 |
-- |                 | m                | move                   |
-- |                 | c                | copy                   |
-- |                 | p                | paste                  |
-- |                 | d                | delete                 |
-- |                 | Y                | copy path              |
-- |                 | H                | toggle hidden files    |
-- |                 | I                | toggle ignored files   |
-- |                 | Z                | close all directories  |
-- |                 | l                | open directory         |
-- |                 | h                | close directory        |
-- |                 | <CR>             | open file as buffer    |
-- |                 | <Tab>            | select files           |
-- |                 | <S-Tab>          | unselect files         |
-- |-----------------|------------------|------------------------|
-- | Snacks Picker   | <CR>             | open buffer            |
-- |                 | <C-x>            | close buffer           |
-- |                 | <C-c>            | close picker           |
-- |                 | <C-j>            | next selection         |
-- |                 | <C-k>            | prev selection         |
-- |-----------------|------------------|------------------------|

local custom = require("core.keymaps.custom")

local M = {}

M.vim = {
	normal = {
		["<C-q>"] = { ":wqa<CR>", "Save and quit" },
		["<C-s>"] = { ":update<CR>", "Save buffer" },
		["<C-c>"] = { ":nohl<CR>", "Clear search highlights" },
		["<C-u>"] = { "<C-u>zz", "Scroll up and center" },
		["<C-d>"] = { "<C-d>zz", "Scroll down and center" },
		["<Tab>"] = { ":bnext<CR>", "Cycle next buffer" },
		["<S-Tab>"] = { ":bprev<CR>", "Cycle prev buffer" },
		["n"] = { "nzzzv", "Next search match and center" },
		["N"] = { "Nzzzv", "Prev search match and center" },
		["x"] = { '"_x', "Delete w/o overwriting register" },
	},
	insert = {
		["<C-c>"] = { "<Esc>", "Convenient escape" },
	},
	visual = {
		["<C-c>"] = { "<Esc>", "Convenient escape" },
		["<"] = { "<gv", "Stay in visual mode on left indent" },
		[">"] = { ">gv", "Stay in visual mode on right indent" },
	},
}

-- stylua: ignore start
M.plugin = {
	normal = {
		-- AutoSession
		["<leader>ss"] = { ":AutoSession save<CR>", "Save session" },
		["<leader>sr"] = { ":AutoSession restore<CR>", "Restore session" },
		["<leader>sf"] = { ":AutoSession search<CR>", "Find session" },
		-- Explorer
		["<leader>ee"] = { function() Snacks.explorer.open() end, "Toggle explorer", },
		-- Picker
		["<leader>ff"] = { function() Snacks.picker.files() end, "Find files", },
		["<leader>fr"] = { function() Snacks.picker.recent() end, "Find recents", },
		["<leader>fs"] = { function() Snacks.picker.grep() end, "Find string", },
    ["<leader>fh"] = { function() Snacks.picker.highlights() end, "Find highlight group", },
		-- Git
		["<leader>gg"] = { function() Snacks.lazygit() end, "Open lazygit", },
		["<leader>gc"] = { custom.git_conflicts, "List git conflicts" },
		["<leader>gb"] = { ":Gitsigns blame_line<CR>", "Toggle blame line" },
		["<leader>ghh"] = { ":Gitsigns preview_hunk<CR>", "Preview git hunk" },
		["<leader>ghr"] = { ":Gitsigns reset_hunk<CR>", "Restore git hunk" },
		["<leader>ghn"] = { ":Gitsigns next_hunk<CR>", "Next git hunk" },
		["<leader>ghp"] = { ":Gitsigns prev_hunk<CR>", "Prev git hunk" },
		-- Buffers
		["<leader>bb"] = { function() Snacks.picker.buffers() end, "Find open buffer", },
		["<leader>bx"] = { function() Snacks.bufdelete() end, "Close current buffer", },
		-- Windows
		["<leader>wv"] = { "<C-w>v", "Split window vertically" },
		["<leader>wh"] = { "<C-w>s", "Split window horizontally" },
		["<leader>we"] = { "<C-w>=", "Make windows equal size" },
		["<leader>wx"] = { ":close<CR>", "Close current window" },
		-- Configs
		["<leader>L"] = { ":Lazy<CR>", "Open Lazy" },
		["<leader>M"] = { ":Mason<CR>", "Open Mason" },
	},
}

M.lsp = {
	normal = {
		["<leader>ld"] = { function() Snacks.picker.lsp_definitions() end, "Go to definition", },
		["<leader>lr"] = { function() Snacks.picker.lsp_references() end, "Go to references", },
		["<leader>li"] = { function() Snacks.picker.lsp_implementations() end, "Go to implementation", },
		["<leader>lt"] = { function() Snacks.picker.lsp_type_definitions() end, "Go to type definition", },
		["<leader>lR"] = { function() vim.lsp.buf.rename() end, "Rename symbol", },
	},
}
-- stylua: ignore end

return M
