return {
	"kylechui/nvim-surround",
	tag = "v4.0.2",
	event = "VeryLazy",
	config = function()
		local nvim_surround = require("nvim-surround")

		nvim_surround.setup()
	end,
}
