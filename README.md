# nvim-config

Personal Neovim configuration built on [lazy.nvim](https://github.com/folke/lazy.nvim).

## Requirements

- Neovim >= 0.11
- Git
- A C compiler (for Treesitter parser compilation — `gcc` or `clang`)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope grep search)
- A [Nerd Font](https://www.nerdfonts.com/) (for icons in lualine and which-key)

## Installation

```bash
git clone https://github.com/colby-noah/nvim-config ~/.config/nvim
nvim
```

Lazy will bootstrap itself and install all plugins on first launch.

## Structure

```
~/.config/nvim/
├── init.lua                  # Entry point
├── lazy-lock.json            # Plugin version lockfile
└── lua/
    ├── config/
    │   ├── lazy.lua          # Lazy.nvim bootstrap and setup
    │   ├── options.lua       # Vim options (line numbers, indenting, etc.)
    │   ├── remap.lua         # Global keymaps
    │   └── diagnostics.lua   # LSP diagnostic display config
    └── plugins/
        ├── blink.lua         # Autocompletion (blink.cmp + LuaSnip)
        ├── lspconfig.lua     # LSP server configurations
        ├── mason.lua         # LSP/tool installer
        ├── mason-lspconfig.lua
        ├── telescope.lua     # Fuzzy finder
        ├── theme.lua         # Colorscheme (Catppuccin Frappé)
        ├── treesitter.lua    # Syntax highlighting + text objects + context
        ├── ts-autotag.lua    # Auto close/rename HTML tags
        ├── lualine.lua       # Status line
        └── which-key.lua     # Keymap hints
```

## Plugins

| Plugin | Purpose |
|--------|---------|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [catppuccin](https://github.com/catppuccin/nvim) | Colorscheme (Frappé) |
| [blink.cmp](https://github.com/Saghen/blink.cmp) | Autocompletion |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client configuration |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP/linter/formatter installer |
| [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) | Mason + lspconfig bridge |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting and parsing |
| [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) | Sticky context header |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Function/class text objects |
| [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) | Auto close/rename HTML tags |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status line |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keymap hints |

## LSP Servers

Managed via Mason. The following servers are auto-installed:

- `html`
- `cssls` + `css_variables`
- `clangd` (C/C++)
- `lua_ls` (Lua)
- `pyright` (Python)
- `vtsls` (TypeScript/JavaScript/React)
- `vue_ls` (Vue)

## Keymaps

Leader key is `Space`.

### General

| Key | Action |
|-----|--------|
| `<leader>w` | Save file |
| `<leader>q` | Quit |
| `<leader>o` | Source current file |
| `<leader>e` | Open diagnostic float |
| `<leader>pv` | Open file explorer (netrw) |
| `<C-y>` | Copy to system clipboard |
| `<C-p>` | Paste from system clipboard |

### Telescope

| Key | Action |
|-----|--------|
| `<leader>pf` | Find files (cwd) |
| `<leader>pg` | Find files (git) |
| `<leader>ps` | Grep search |

### Completion (blink.cmp)

| Key | Action |
|-----|--------|
| `<Tab>` | Select next item |
| `<S-Tab>` | Select previous item |
| `<CR>` | Confirm selection |

### Treesitter Text Objects

Usable in visual (`x`) and operator-pending (`o`) modes.

| Key | Action |
|-----|--------|
| `af` | Select outer function |
| `if` | Select inner function |
| `ac` | Select outer class |
| `ic` | Select inner class |
| `as` | Select local scope |

### Which-key

| Key | Action |
|-----|--------|
| `<leader>?` | Show buffer-local keymaps |
