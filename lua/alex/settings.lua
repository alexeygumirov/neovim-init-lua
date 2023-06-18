local opt = vim.opt

opt.termguicolors  = true
opt.autoindent     = true
opt.compatible     = false
opt.inccommand     = "split"
opt.encoding       = "utf-8"
opt.path           = vim.opt.path + ".,**"
opt.shell          = "/usr/bin/bash"
opt.number         = true
opt.relativenumber = true
opt.showcmd        = true
opt.wildmenu       = true
opt.wildmode       = "list"
opt.showmatch      = true
opt.incsearch      = true
opt.hlsearch       = true
opt.smartcase      = true
opt.mouse          = { n = true, v = true }
opt.cursorline     = true
opt.hidden         = true
opt.langmap        = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
opt.splitbelow     = true
opt.splitright     = true
opt.completeopt    = "menu,preview,longest,noinsert"
opt.autochdir      = true
opt.cmdheight      = 1
opt.syntax         = "on"
opt.mouse          = "nvi"

vim.cmd[[
filetype indent on
filetype plugin on
]]

vim.api.nvim_create_autocmd('FileType', {
    desc = 'Format on write using LSP server',
    pattern = {
        'python',
        'lua',
        'yaml',
        'haskell',
        'json',
        'css',
        'javascript',
        'typescript',
        'terraform',
        'html',
        'robot',
    },
    group = vim.api.nvim_create_augroup('format_on_save', { clear = true }),
    callback = function(opts)
        vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = opts.buf,
            command = "silent! lua vim.lsp.buf.format({async=false})"
        })
    end,
})


vim.api.nvim_create_autocmd('FileType', {
    desc = 'Function name in the Winbar',
    pattern = {
        'python',
        'lua',
        'haskell',
        'javascript',
        'typescript',
        "sh",
    },
    group = vim.api.nvim_create_augroup('winbar_function', { clear = true }),
    callback = function(opts)
        vim.api.nvim_create_autocmd(
        { "CursorMoved", "BufAdd", "BufNew", "BufReadPost", "WinScrolled", "InsertLeave" },
        {
            buffer = opts.buf,
            callback = function()
                local winbar_filetype_exclude = {
                    "help",
                    "dashboard",
                    "Telescope",
                    "nofile",
                    'Outline',
                    "TelescopePrompt",
                }
                if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype)
                    then
                        vim.opt_local.winbar = nil
                        return
                    end
                    require('config_modules.treesitter').winbar_update()
                end,
            })
        end,
    })

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
