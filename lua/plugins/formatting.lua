return {
  "stevearc/conform.nvim",
  enabled = true,
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      go = { "gofmt" },
    },
    format_on_save = {
      lsp_format = "fallback",
      timeout_ms = 500
    }
  }
}
