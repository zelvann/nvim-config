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
			filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
		})

		lspconfig.gopls.setup({
			capabilities = capabilities,
			settings = {
				gofumpt = true,
				staticcheck = true,
			},
		})

		lspconfig.intelephense.setup({
			capabilities = capabilities,
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

		lspconfig.terraformls.setup({
			capabilities = capabilities,
			filetypes = { "tofu", "terraform", "terraform-vars" },
		})

		lspconfig.tflint.setup({
			capabilities = capabilities,
			filetypes = { "tofu", "terraform" },
		})

		lspconfig.yamlls.setup({
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
				"gopls",
				"intelephense",
				"lua_ls",
				"pyright",
				"terraformls",
				"tflint",
				"yamlls",
			},
			automatic_installation = true,
		})
	end,
}
