return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter.configs").setup({
        -- Parsers to install
        ensure_installed = {
          "lua",
          "c",
          "cpp",
          "rust",
          "python",
          "bash",
          "html",
          "css",
          "json",
          "javascript",
          "markdown"
        },

        -- Enable syntax highlighting
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },

        -- Enable indentation
        indent = {
          enable = true,
        },

        -- Optional: auto-install missing parsers when entering buffer
        auto_install = true,
      })
    end,
  }
}

