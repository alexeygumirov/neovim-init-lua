require('lspconfig').bashls.setup({})
require('lspconfig').cssls.setup({
    cmd = { "vscode-css-languageserver", "--stdio" },
})
require('lspconfig').gopls.setup({})
require('lspconfig').html.setup({})
require('lspconfig').pylsp.setup({})
require('lspconfig').tsserver.setup({})
-- require('lspconfig').pyright.setup({})

-- #### Autocmd
vim.cmd([[
    autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc
    autocmd Filetype markdown setlocal omnifunc=v:lua.vim.lsp.omnifunc
    autocmd Filetype javascript setlocal omnifunc=v:lua.vim.lsp.omnifunc
    autocmd Filetype sh setlocal omnifunc=v:lua.vim.lsp.omnifunc
    autocmd Filetype go setlocal omnifunc=v:lua.vim.lsp.omnifunc
    autocmd Filetype vim setlocal omnifunc=v:lua.vim.lsp.omnifunc
    autocmd Filetype haskell setlocal omnifunc=v:lua.vim.lsp.omnifunc
    autocmd Filetype yaml setlocal omnifunc=v:lua.vim.lsp.omnifunc
]])
