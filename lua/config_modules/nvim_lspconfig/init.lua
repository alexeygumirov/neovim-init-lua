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

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
require('lspconfig').sumneko_lua.setup({
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
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
