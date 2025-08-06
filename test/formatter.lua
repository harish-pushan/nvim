require("conform").setup({
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
  formatters_by_ft = {
    python = { "black" },
    rust = { "rustfmt" },
    c = { "clang_format" },
    java = { "google-java-format" },
    markdown = { "prettier" },
  },
})
