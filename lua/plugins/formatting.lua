return {
	"stevearc/conform.nvim",
	enabled = true,
	opts = {
		formatters_by_ft = {
			c = { "clang-format" },
			cpp = { "clang-format" },
			go = { "gofumpt" },
			lua = { "stylua" },
			proto = { "buf" },
		},
		format_on_save = {
			lsp_format = "fallback",
			timeout_ms = 500,
		},
	},
}
