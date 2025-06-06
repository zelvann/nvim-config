return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	enabled = true,
	opts = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"go",
				"html",
				"java",
				"javascript",
				"json",
				"lua",
				"php",
				"proto",
				"python",
				"terraform",
				"typescript",
				"tsx",
				"yaml",
			},
			sync_install = true,
			auto_install = false,
			highlight = {
				enable = true,
				disable = {},
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
		})
	end,
}
