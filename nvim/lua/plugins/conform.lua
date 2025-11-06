return {
	'stevearc/conform.nvim',
	tag = 'v9.0.0',
	tag = 'v9.1.0',
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		local conform = require('conform')

		conform.setup({
			formatters_by_ft = {
        javascript = { 'prettier' },
        javascriptreact = { 'prettier' },
				json = { 'prettier' },
        ruby = { 'rubocop' },
        typescript = { 'prettier' },
        typescriptreact = { 'prettier' },
				yaml = { 'prettier' },
			},
		})

		vim.api.nvim_create_autocmd('BufWritePre', {
			pattern = '*',
			callback = function(args)
				conform.format({ bufnr = args.buf })
			end,
		})
	end
}
