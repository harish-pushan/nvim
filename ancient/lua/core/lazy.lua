local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        "lua_ls",
        "pyright",
        "clangd",
        "tsserver",
    },
})

-- Default capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- New Mason-LSPConfig handler format:
mason_lspconfig.setup_handlers({
    function(server)
        lspconfig[server].setup({
            capabilities = capabilities,
        })
    end,

    -- Optional per-server override
    ["lua_ls"] = function()
        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = { globals = { "vim" } },
                }
            }
        })
    end,
})

