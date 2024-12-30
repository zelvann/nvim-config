return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	enabled = true,
	opts = function()
		vim.cmd([[colorscheme tokyonight-storm]])
	end,
}
