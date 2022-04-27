require('lspconfig').bashls.setup({
    cmd_env = {
      GLOB_PATTERN = "*@(.sh|.inc|.bash|.command)"
    },
    filetypes = { "sh" }
})
require('lspconfig').cssls.setup({
    cmd = { "vscode-css-languageserver", "--stdio" },
})
require('lspconfig').gopls.setup({})
require('lspconfig').html.setup({})
require('lspconfig').pylsp.setup({})
require('lspconfig').tsserver.setup({})
-- require('lspconfig').pyright.setup({})

-- local runtime_path = vim.split(package.path, ';')
-- table.insert(runtime_path, "lua/?.lua")
-- table.insert(runtime_path, "lua/?/init.lua")
require('lspconfig').sumneko_lua.setup({
    settings = {
      Lua = {
        runtime = {
          version = 'Lua 5.3',
          path = {
            -- '?.lua',
            -- '?/init.lua',
            -- vim.fn.expand'~/.luarocks/share/lua/5.3/?.lua',
            -- vim.fn.expand'~/.luarocks/share/lua/5.3/?/init.lua',
            '/usr/share/5.3/?.lua'
            -- '/usr/share/lua/5.3/?/init.lua'
          }
        },
        workspace = {
          library = {
            -- vim.fn.expand'~/.luarocks/share/lua/5.3',
            '/usr/share/lua/5.3'
          }
        }
      }
    }
})

require('lspconfig').terraformls.setup({})
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
    autocmd Filetype terraform setlocal omnifunc=v:lua.vim.lsp.omnifunc
    autocmd Filetype lua setlocal omnifunc=v:lua.vim.lsp.omnifunc
]])
