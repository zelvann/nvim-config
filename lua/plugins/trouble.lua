return {
	"folke/trouble.nvim",
	enabled = true,
	opts = {
		auto_close = true,
		focus = true,
		win = {
			type = "split",
			position = "right",
		},
	},
	keys = {
		{
			"<C-e>",
			"<cmd>Trouble diagnostics toggle<cr>",
		},
	},
}
