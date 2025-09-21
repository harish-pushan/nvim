return {
  "basola21/PDFview",
  lazy = false,
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    local map = vim.keymap.set

    -- Keymaps for PDF navigation
    map("n", "<leader>jj", function()
      require("pdfview.renderer").next_page()
    end, { desc = "PDFview: Next page" })

    map("n", "<leader>kk", function()
      require("pdfview.renderer").previous_page()
    end, { desc = "PDFview: Previous page" })

    -- Optional: command to open PDF via Telescope
    vim.api.nvim_create_user_command("OpenPDF", function()
      require("pdfview").open()
    end, { desc = "Open PDF via PDFview" })

    -- Autocmd to open PDFs automatically
    vim.api.nvim_create_autocmd("BufReadPost", {
      pattern = "*.pdf",
      callback = function()
        local file_path = vim.api.nvim_buf_get_name(0)
        require("pdfview").open(file_path)
      end,
    })
  end,
}

