local opt = vim.opt

opt.termguicolors  = true
opt.autoindent     = true
opt.compatible     = false
opt.inccommand      = "split"
opt.encoding        = "utf-8"
opt.path            = vim.opt.path + ".,**"
opt.shell           = "/usr/bin/bash"
opt.number          = true
opt.relativenumber  = true
opt.showcmd         = true
opt.wildmenu        = true
opt.wildmode        = "list"
opt.showmatch       = true
opt.incsearch       = true
opt.hlsearch        = true
opt.smartcase       = true
opt.mouse           = { n = true, v = true }
opt.cursorline      = true
opt.hidden          = true
opt.langmap         = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
opt.splitbelow      = true
opt.splitright      = true
opt.completeopt     = "menu,preview"
opt.autochdir       = true

vim.cmd[[
    syntax on
    filetype indent on
    filetype plugin on
    nnoremap <leader>o :Lf<CR>
]]

