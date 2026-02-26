return {
	"rmagatti/auto-session",
	commit = "6243753",
	config = function()
		local auto_session = require("auto-session")

		auto_session.setup({
			auto_restore_enabled = false,
			auto_session_suppress_dirs = {
				"~/",
				"~/Dev/",
				"~/Downloads/",
				"~/Documents/",
				"~/Desktop/",
			},
		})
	end,
}
