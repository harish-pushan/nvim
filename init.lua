-- Options --
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.swapfile = false
vim.opt.signcolumn = "yes"
vim.lsp.ui = false
vim.opt.winborder = "rounded"

-- Keybindings --
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set("n", "<leader>ea", ":Explore<CR>")
vim.keymap.set("n", "<leader>so", ":update<CR> :source<CR>")

-- Packages --
vim.pack.add({
	{ src = "https://github.com/webhooked/kanso.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim.git" },
	{ src = "https://github.com/nvim-mini/mini.pick.git" },
	{ src = "https://github.com/neovim/nvim-lspconfig.git" },
	{ src = "https://github.com/williamboman/mason.nvim" },
	{ src = "https://github.com/williamboman/mason-lspconfig.nvim" },
	{ src = "https://github.com/numToStr/Comment.nvim.git" },
	{ src = "https://github.com/ThePrimeagen/harpoon.git" },
	-- dependency for harpoon --
	{ src = "https://github.com/nvim-lua/plenary.nvim" },

})

-- Harpoon.nvim --
local harpoon = require("harpoon")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
harpoon.setup({})

-- Harpoon.keymaps --
vim.keymap.set("n", "<A-a>", mark.add_file, { desc = "Harpoon add file" })
vim.keymap.set("n", "<A-e>", ui.toggle_quick_menu, { desc = "Harpoon menu" })

vim.keymap.set("n", "<A-1>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<A-2>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<A-3>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<A-4>", function() ui.nav_file(4) end)


--Commen.nvim --
require("Comment").setup()
vim.keymap.set("n", "<leader>f", ":Pick files<CR>")
vim.keymap.set("n", "<leader>f", ":Pick files<CR>")

-- LSP servers --
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "pyright", "bashls", "ts_ls" }, -- auto install servers you want
	automatic_installation = true,
})
vim.lsp.enable({ "lua_ls", "pyright", "bashls", "ts_ls" })
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)

-- AutoComplete --
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("my.lsp", {}),
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
		if client:supports_method("textDocument/completion") then
			-- Optional: trigger autocompletion on EVERY keypress. May be slow!
			local chars = {}
			for i = 32, 126 do
				table.insert(chars, string.char(i))
			end
			client.server_capabilities.completionProvider.triggerCharacters = chars
			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
		end
	end,
})

vim.cmd([[set completeopt+=menuone,noselect,popup]])

-- Oil.nvim --
require("oil").setup()
vim.keymap.set("n", "<leader>e", ":Oil<CR>")

-- MiniPick --
require("mini.pick").setup()
vim.keymap.set("n", "<leader>f", ":Pick files<CR>")
vim.keymap.set("n", "<leader>h", ":Pick help<CR>")

-- Plugins Options --
vim.cmd("colorscheme kanso")
