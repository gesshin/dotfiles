-- Manages formatters and automates the process of running external formatters
vim.pack.add({
	{ src = "https://github.com/stevearc/conform.nvim", version = "v9.1.0" },
})

local conform = require("conform")
local root_file = require("conform.util").root_file

-- Checks if the project's Gemfile.lock lists rubocop, so that its pinned version can be used
local function project_has_rubocop(self, ctx)
	local root = root_file({ "Gemfile.lock" })(self, ctx)
	if not root then
		return false
	end

	local file = io.open(root .. "/Gemfile.lock")
	if not file then
		return false
	end

	local lockfile = file:read("*a")
	file:close()
	return lockfile:find("\n    rubocop %(") ~= nil
end

conform.setup({
	formatters_by_ft = { -- Mapping of formatters by filetype
		json = { "prettier" },
		lua = { "stylua" },
		yaml = { "prettier" },
		-- Rails
		ruby = { "rubocop" },
		-- React
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		-- Python
		python = { "ruff_fix", "ruff_format" },
	},
	formatters = { -- Customize formatters
		rubocop = { -- Run the project's rubocop with bundler when it has one
			cwd = root_file({ "Gemfile.lock" }), -- Bundler needs to run from the project root
			command = function(self, ctx)
				return project_has_rubocop(self, ctx) and "bundle" or "rubocop"
			end,
			prepend_args = function(self, ctx)
				return project_has_rubocop(self, ctx) and { "exec", "rubocop" } or {}
			end,
		},
	},
})

-- Trigger format on buffer write
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		conform.format({ bufnr = args.buf })
	end,
})
