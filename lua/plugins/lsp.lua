return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"nvim-java/nvim-java",
	},
	enabled = true,
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		vim.lsp.config("biome", {
			capabilities = capabilities,
		})

		vim.lsp.config("clangd", {
			capabilities = capabilities,
			filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
		})

		vim.lsp.config("gopls", {
			capabilities = capabilities,
			settings = {
				gopls = {
					gofumpt = true,
					staticcheck = false,
				},
			},
		})

		vim.lsp.config("intelephense", {
			capabilities = capabilities,
		})

		vim.lsp.config("lua_ls", {
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

		vim.lsp.config("pyright", {
			capabilities = capabilities,
		})

		vim.lsp.config("svelte", {
			capabilities = capabilities,
		})

		vim.lsp.config("tailwindcss", {
			capabilities = capabilities,
		})

		vim.lsp.config("terraformls", {
			capabilities = capabilities,
			filetypes = { "tofu", "terraform", "terraform-vars" },
		})

		vim.lsp.config("tflint", {
			capabilities = capabilities,
			filetypes = { "tofu", "terraform" },
		})

		vim.lsp.config("vtsls", {
			capabilities = capabilities,
			settings = {
				typescript = {
					preferences = {
						importModuleSpecifier = "non-relative",
					},
				},
			},
		})

		vim.lsp.config("yamlls", {
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
				"biome",
				"clangd",
				"gopls",
				"intelephense",
				"jdtls",
				"lua_ls",
				"pyright",
				"svelte",
				"tailwindcss",
				"terraformls",
				"tflint",
				"vtsls",
				"yamlls",
			},
			automatic_installation = true,
		})
	end,
}
