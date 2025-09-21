-- lua/plugins/persistence.lua
return {
  "folke/persistence.nvim",
  event = "BufReadPre",                                       -- load before buffers are read
  opts = {
    dir = vim.fn.stdpath("state") .. "/sessions/",            -- directory to store sessions
    options = { "buffers", "curdir", "tabpages", "winsize" }, -- what to save
  },
  config = function(_, opts)
    local persistence = require("persistence")
    persistence.setup(opts)

    -- Auto-restore session when starting without args
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        if vim.fn.argc() == 0 then
          persistence.load()
        end
      end,
    })

    -- Optional: Keymaps to manually manage sessions
    vim.keymap.set("n", "<leader>qs", function()
      persistence.load()
    end, { desc = "Restore session for cwd" })

    vim.keymap.set("n", "<leader>ql", function()
      persistence.load({ last = true })
    end, { desc = "Restore last session" })

    vim.keymap.set("n", "<leader>qd", function()
      persistence.stop()
    end, { desc = "Stop persistence" })
  end,
}
