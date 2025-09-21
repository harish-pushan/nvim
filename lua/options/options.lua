--local vars for vim.cmd and vim.opt
local cmd = vim.cmd
local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- tree sitter style
vim.cmd("let g:netrw_liststyle = 3")

-- Theme and UI options
vim.cmd.colorscheme "catppuccin-mocha"
vim.opt.wrap = false
vim.opt.textwidth = 0
