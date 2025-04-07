return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	enabled = true,
	config = function()
		require("lualine").setup({
			options = {
				theme = "tokyonight",
				section_separators = "",
				component_separators = "",
			},
		})
	end,
}
