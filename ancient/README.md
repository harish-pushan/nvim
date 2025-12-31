# 💤 My Neovim Config

![Neovim](https://img.shields.io/badge/Neovim-0.9+-57A143?logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/Made%20with-Lua-blue?logo=lua)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Status](https://img.shields.io/badge/Status-Stable-success)

A sleek, minimal, and powerful **Neovim configuration** built entirely in **Lua**, powered by [lazy.nvim](https://github.com/folke/lazy.nvim).  
This setup balances **speed**, **aesthetics**, and **productivity**, ideal for modern developers.

---

## ✨ Features

- ⚡ **Blazing-fast startup** with [lazy.nvim](https://github.com/folke/lazy.nvim)
- 🌈 **Beautiful theme** — [Kanso](https://github.com/webhooked/kanso.nvim) (with Catppuccin fallback)
- 🧠 **Treesitter-based syntax highlighting**  
- 🔭 **Powerful file & text search** via [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- 🧭 **Quick file switching** using [Harpoon](https://github.com/ThePrimeagen/harpoon)
- 📊 **Elegant statusline** with [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- 🪶 **2-space indentation**, **relative line numbers**, and essential quality-of-life keybindings

---

## 🧩 Plugin List

| Plugin | Description |
|--------|--------------|
| [folke/lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [webhooked/kanso.nvim](https://github.com/webhooked/kanso.nvim) | Colorscheme |
| [catppuccin/nvim](https://github.com/catppuccin/nvim) | Alternative theme |
| [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting |
| [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy file finder |
| [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline |
| [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon) | Quick navigation |

---

## 🧠 Keybindings

| Mode | Shortcut | Action |
|------|-----------|--------|
| Normal | `<leader>w` | Save current file |
| Normal | `<leader>q` | Quit current file |
| Normal | `<leader>ff` | Find files (Telescope) |
| Normal | `<leader>fg` | Live grep |
| Normal | `<leader>fb` | Find buffers |
| Normal | `<leader>fh` | Find help tags |
| Normal | `<A-a>` | Add file to Harpoon |
| Normal | `<A-e>` | Toggle Harpoon menu |
| Normal | `<A-1>` → `<A-4>` | Jump to Harpoon files |

> 💡 **Leader key:** `<Space>`

---

## 🛠️ Installation

### 1. Clone the Config
```bash
git clone https://github.com/<your-username>/nvim ~/.config/nvim
