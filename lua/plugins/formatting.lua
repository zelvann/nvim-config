return {
	"stevearc/conform.nvim",
	enabled = true,
	dependencies = {
		"williamboman/mason.nvim",
		"nvimtools/none-ls.nvim",
		"jay-babu/mason-null-ls.nvim",
	},
	config = function()
		local null_ls = require("mason-null-ls")
		local conform = require("conform")
		null_ls.setup({
			ensure_installed = {
				"buf",
				"clang-format",
				"gofumpt",
				"jq",
				"php-cs-fixer",
				"stylua",
				"yamlfmt",
			},
			automatic_installation = true,
		})
		conform.setup({
			formatters_by_ft = {
				c = { "clang-format" },
				cpp = { "clang-format" },
				go = { "gofumpt" },
				json = { "jq" },
				lua = { "stylua" },
				php = { "php-cs-fixer" },
				proto = { "buf" },
				yaml = { "yamlfmt" },
			},
			format_on_save = {
				lsp_format = "fallback",
				timeout_ms = 500,
			},
		})
	end,
}
