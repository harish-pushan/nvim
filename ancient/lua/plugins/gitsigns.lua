return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      signs = {
        add          = { text = "│" },
        change       = { text = "│" },
        delete       = { text = "_" },
        topdelete    = { text = "‾" },
        changedelete = { text = "~" },
      },
    })

    local map = vim.keymap.set

    map("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview git hunk" })
    map("n", "<leader>gb", ":Gitsigns blame_line<CR>", { desc = "Git blame line" })
    map("n", "<leader>gd", ":Gitsigns diffthis<CR>", { desc = "Git diff" })
  end,
}

