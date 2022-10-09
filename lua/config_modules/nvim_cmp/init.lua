local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
    end,
  },
  window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
  },
  formatting = {
    format = lspkind.cmp_format({with_text = true, maxwidth = 50})
  },
  -- view = {
  --    entries = "native",
  -- },
  mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources =  cmp.config.sources({
        { name = 'vsnip' }, -- For vsnip users.
        { name = 'nvim_lsp' },
        -- { name = 'snippy' }, -- For snippy users.
        -- { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
    },{
        { name = 'buffer' },
        -- { name = 'cmdline' },
        { name = 'path' },
    }),
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    sources = cmp.config.sources({
      { name = 'buffer' }
    })
})

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    -- completion = { autocomplete = false },
    mapping = cmp.mapping.preset.cmdline(),
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
})

  -- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig').cssls.setup({
  capabilities = capabilities
})
require('lspconfig').gopls.setup({
  capabilities = capabilities
})
require('lspconfig').pylsp.setup({
  capabilities = capabilities
})
require('lspconfig').html.setup({
  capabilities = capabilities
})
require('lspconfig').sumneko_lua.setup({
  capabilities = capabilities
})
require('lspconfig').terraformls.setup({
  capabilities = capabilities
})
require('lspconfig').yamlls.setup({
  capabilities = capabilities
})

vim.cmd([[
    autocmd FileType * lua require('cmp').setup.buffer { enabled = false }
    autocmd FileType python lua require('cmp').setup.buffer { enabled = true }
    autocmd FileType markdown lua require('cmp').setup.buffer { enabled = true, sources = { {name = 'buffer'}, {name = 'path'} }}
    autocmd FileType javascript lua require('cmp').setup.buffer { enabled = true }
    autocmd FileType sh lua require('cmp').setup.buffer { enabled = true }
    autocmd FileType go lua require('cmp').setup.buffer { enabled = true }
    autocmd FileType vim lua require('cmp').setup.buffer { enabled = true }
    autocmd FileType yaml lua require('cmp').setup.buffer { enabled = true }
    autocmd FileType haskell lua require('cmp').setup.buffer { enabled = true }
    autocmd FileType terraform lua require('cmp').setup.buffer { enabled = true , source = { { name = 'path' }, { name = 'nvim_lsp' }, { name = 'buffer' }, { name = 'cmdline' } }}
    autocmd FileType lua lua require('cmp').setup.buffer { enabled = true }
]])
