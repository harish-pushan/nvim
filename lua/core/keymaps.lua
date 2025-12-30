vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set

map("n", "<leader>w", ":w<CR>", { desc = "Save file" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit file" })
map("n", "<leader>ea", ":Explore<CR>", { desc = "Netrw Explorer" })
-- Making it so that we can go back and come in
map("n", "<leader><A-o>", "<C-o>")
map("n", "<leader><A-i>", "<C-i>")
 


