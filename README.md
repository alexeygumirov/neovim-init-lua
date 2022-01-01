# My Neovim config in Lua

Many NeoVIM users migrate to full Lua config and many need examples of how others done that.

My Neovim config uses [Vim Plug](https://github.com/junegunn/vim-plug) as a plugin manager.
Maybe later I will migrate to [Packer](https://github.com/wbthomason/packer.nvim). But as of today, I am happy with the **VIM Plug**.

## Key features

- Structured config
- [Papercolor](https://github.com/NLKNguyen/papercolor-theme) color scheme
- LSP support:
    - Use of built in NeoVIM LSP client
    - `nvim-cmp` for completion.
    - `nvim-lspconfig` for LSP servers configurations.
- Highlighting via [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Start up [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) and [FZF](https://github.com/junegunn/fzf.vim) for search
- Integration with [Lf file manager](https://github.com/gokcehan/lf)
- Floating terminal window via [Floaterm](https://github.com/voldikss/vim-floaterm)
- [Firenvim](https://github.com/glacambre/firenvim) support for integration with a Firefox (or Chrome).
- Status line and tab line with [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- Indentation via [IndentLine](https://github.com/Yggdroot/indentLine)
- [Auto paring](https://github.com/Yggdroot/indentLine) for brackets, quotations, tags and other defined patters
- Gitgutter, Fugitive for working with Git.
- VimWiki

## Screenshots

### Dashboard

![Dashboard](screenshot/dashboard.png)

### Completions

![Completion 1](screenshot/completion1.png)

![Completion 2](screenshot/completion2.png)

![Completion 3](screenshot/completion3.png)

### Highlight

![Python](screenshot/python_highlight.png)

![Lua](screenshot/lua_highlight.png)

![Markdown](screenshot/md_highlight.png)
