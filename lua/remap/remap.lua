vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>so", vim.cmd.so)
vim.keymap.set("n", "<leader>sy", vim.cmd.PackerSync)
vim.keymap.set("n", "<leader>fi", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
-- replace under the cursor
vim.keymap.set('n', '<leader>rw', ':%s/\\<<C-r><C-w>\\>//g<Left><Left>', { noremap = true, silent = true })
-- replace globally
vim.keymap.set('n', '<leader>rp', ':%s//g<Left><Left>', { noremap = true, silent = true })
-- replace in visual mode
vim.keymap.set('v', '<leader>rs', ':s//g<Left><Left>', { noremap = true, silent = true })
