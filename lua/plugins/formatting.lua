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
				"black",
				"buf",
				"clang-format",
				"gofumpt",
				"jq",
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
				javascript = { "biome", stop_after_first = true },
				typescript = { "biome", stop_after_first = true },
				typescriptreact = { "biome", stop_after_first = true },
				json = { "jq" },
				lua = { "stylua" },
				proto = { "buf" },
				python = { "black" },
				yaml = { "yamlfmt" },
			},
			format_on_save = {
				lsp_format = "fallback",
				timeout_ms = 500,
			},
		})
	end,
}
