return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	enabled = true,
	event = "VeryLazy",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				mode = "buffers",
				style_preset = {
					bufferline.style_preset.no_italic,
				},
				numbers = "none",
				diagnostics = "nvim_lsp",
				diagnostics_update_on_event = true,
				separator_style = "slant",
				show_buffer_icons = true,
				show_buffer_close_icons = true,
				show_close_icon = true,
				show_tab_indicators = true,
				persist_buffer_sort = true,
				always_show_bufferline = true,
			},
		})
	end,
}
