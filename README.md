# My Neovim Configuration

This is a minimal Neovim setup with **LSP support**, **autocomplete**, **file management plugins**, and **modern UI enhancements**.

It uses **native Neovim LSP** with **Mason** for automatic language server management and lightweight plugins for file navigation and picking.

---

## Features

### General Options

* Line numbers with relative numbers (`number` & `relativenumber`)
* No line wrapping (`wrap = false`)
* Tab width set to 4 spaces (`tabstop = 4`)
* No swap files (`swapfile = false`)
* Persistent sign column (`signcolumn = yes`)
* Rounded floating window borders (`winborder = "rounded"`)

---

### Keybindings

| Shortcut     | Action                          |
| ------------ | ------------------------------- |
| `<leader>w`  | Save current buffer             |
| `<leader>q`  | Quit Neovim                     |
| `<leader>ea` | Open file explorer (`:Explore`) |
| `<leader>so` | Save & source init.lua          |
| `<leader>lf` | Format buffer using LSP         |
| `<leader>e`  | Open `oil.nvim` file explorer   |
| `<leader>f`  | Pick files using `mini.pick`    |
| `<leader>h`  | Pick help topics (`mini.pick`)  |

> Leader key is set to **space** (`vim.g.mapleader = " "`)

---

### Plugins

* **[kanso.nvim](https://github.com/webhooked/kanso.nvim)** – Colorscheme and UI enhancements
* **[oil.nvim](https://github.com/stevearc/oil.nvim)** – Modern file explorer
* **[mini.pick](https://github.com/nvim-mini/mini.pick)** – Lightweight picker for files and help
* **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** – LSP configurations
* **[mason.nvim](https://github.com/williamboman/mason.nvim)** – Automatic installation of LSP servers
* **[mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)** – Bridges Mason and nvim-lspconfig

---

### LSP Setup

* Managed by **Mason** with `automatic_installation` enabled
* Language servers installed automatically:

  * `lua_ls` – Lua language server
  * `pyright` – Python language server
  * `bashls` – Bash language server
* Keybinding to **format buffer** with LSP: `<leader>lf`
* Autocomplete is enabled for all LSP servers and triggers on most typed characters

---

### Autocomplete & Completions

* LSP attach triggers autocomplete automatically
* Completion options:

  ```vim
  set completeopt+=menuone,noselect,popup
  ```
* Supports inline suggestions and triggers on all printable characters

---

### File Management Plugins

* **Oil.nvim**: modern file explorer
* **MiniPick**: quick file and help picker
* Keybindings:

  * `<leader>e` → Oil file explorer
  * `<leader>f` → Pick files
  * `<leader>h` → Pick help topics

---

### Colorscheme

* Using **kanso.nvim**
* Background can be customized for transparency via `hi Normal guibg=NONE` and related highlight groups

---

### Installation

1. Clone your config to `~/.config/nvim/init.lua`
2. Open Neovim:

   ```bash
   nvim
   ```
3. Mason will automatically install missing LSP servers
4. Open a Lua/Python/Bash file to trigger LSP

---

### Notes

* Requires **Neovim 0.12+**
* Ensure `lua_ls`, `pyright`, and `bashls` are installed if not using Mason
* Designed to work **without Packer** — uses `vim.pack.add` for plugin management

