return {
	"EdenEast/nightfox.nvim",
	lazy = false,
	priority = 1000,
	enabled = true,
	config = function()
		local cfg = require("nightfox")
		cfg.setup({
			options = {
				styles = {
					comments = "italic",
					keywords = "bold",
					types = "italic,bold",
				},
			},
		})
		vim.cmd("colorscheme nightfox")
	end,
}
