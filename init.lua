require("remap.remap")
require("options.options")
require("config.lazy")
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
vim.cmd.colorscheme "catppuccin-mocha"
