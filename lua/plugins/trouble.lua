return {
	"folke/trouble.nvim",
	enabled = true,
	opts = {
		auto_close = true,
		focus = true,
	},
	keys = {
		{
			"<C-e>",
			"<cmd>Trouble diagnostics toggle<cr>",
		},
	},
}
