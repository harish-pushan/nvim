vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.g.mapleader= " "
-- core keybindings 
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save current file' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'exit current file' })

-- Lazy config 
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = { -- lazy specs
{"webhooked/kanso.nvim",name = "kanso",priority = 1000},
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    {
      "nvim-telescope/telescope.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")

        telescope.setup({
          defaults = {
            prompt_prefix = "🔍 ",
            selection_caret = " ",
            path_display = { "smart" },
          },
        })

        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep text" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find open buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help" })
      end,
    },
    { "nvim-lualine/lualine.nvim",
      config = function()
        require("lualine").setup({ options = { theme = "kanso" } })
      end
    },
    {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
        local harpoon = require("harpoon")
        harpoon:setup()
        vim.keymap.set("n", "<A-a>", function() harpoon:list():add() end, { desc = "Add file to Harpoon" })
        vim.keymap.set("n", "<A-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle Harpoon menu" })
        vim.keymap.set("n", "<A-1>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<A-2>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<A-3>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<A-4>", function() harpoon:list():select(4) end)
      end,
    },
  },
  install = { colorscheme = { "habamax" } },
  checker = { enabled = true },
})

-- plugins configurations 
-- Load Catppuccin colorscheme
vim.cmd("colorscheme kanso")

