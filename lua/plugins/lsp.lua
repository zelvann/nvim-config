return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	enabled = true,
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")
		lspconfig.clangd.setup({
			capabilities = capabilities,
		})

		lspconfig.gopls.setup({
			capabilities = capabilities,
			settings = {
				gopls = {
					completeUnimported = true,
					usePlaceholders = true,
				},
				gofumpt = true,
				staticcheck = true,
			},
		})

		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						disable = { "incomplete-signature-doc", "trailing-space" },
						globals = { "vim" },
					},
					format = {
						defaultConfig = {
							indent_style = "space",
							indent_size = "2",
							continuation_indent_size = "2",
						},
					},
				},
			},
		})

		lspconfig.pyright.setup({
			capabilities = capabilities,
		})

		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		require("mason-lspconfig").setup({
			ensure_installed = {
				"clangd",
				"lua_ls",
				"pyright",
			},
			automatic_installation = true,
		})
	end,
}
