return {
  {
    "webhooked/kanso.nvim",
    name = "kanso",
    priority = 1000,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  config = function()
    vim.cmd("colorscheme kanso")
  end,
}

