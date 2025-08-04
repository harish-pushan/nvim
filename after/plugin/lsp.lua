-- Clean Mason Setup
require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    "pylsp",-- Python
    "rust_analyzer", -- Rust
    "clangd",        -- C
    "jdtls",         -- Java
    "marksman",      -- Markdown
  },
  -- Do NOT add automatic_installation or any other field for now
})

local lspconfig = require("lspconfig")

local servers = {
  pyright = {},
  rust_analyzer = {},
  clangd = {},
  jdtls = {},
  marksman = {},
}

for name, config in pairs(servers) do
  lspconfig[name].setup(config)
end

