return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	enabled = true,
	opts = {
		actions = {
			open_file = {
				quit_on_open = true,
			},
		},
		filters = {
			dotfiles = true,
			exclude = {
				".env",
				".github",
				".gitignore",
			},
		},
		modified = {
			enable = true,
		},
	},
}

