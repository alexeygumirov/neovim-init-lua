local opts = { noremap=true, silent=true }
local lsp_util = require('lspconfig.util')
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', '<leader>le', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<leader>ls', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<leader>lA', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<leader>lR', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>lL', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<leader>lD', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<leader>ln', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<leader>lc', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<leader>lf', function() vim.lsp.buf.format { async = true } end, bufopts)
end

require("lspconfig.ui.windows").default_options = { border = "rounded" }
local handlers = {
    ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
    ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
}

local util = {
    root_dir = function(fname)
        return lsp_util.find_git_ancestor(fname) or vim.loop.cwd()
    end
}

require('lspconfig').bashls.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    handlers = handlers,
    root_dir = util.root_dir,
    cmd_env = {
        GLOB_PATTERN = "*@(.sh|.inc|.bash|.command)"
    },
    filetypes = { "sh", "zsh" }
})

require('lspconfig').cssls.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    handlers = handlers,
    root_dir = util.root_dir,
    cmd = { "vscode-css-language-server", "--stdio" },
})

-- require'lspconfig'.eslint.setup({
--     on_attach = on_attach,
--     flags = lsp_flags,
--     handlers = handlers,
-- })

require('lspconfig').gopls.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    handlers = handlers,
    root_dir = util.root_dir,
})

require('lspconfig').html.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    handlers = handlers,
    cmd = { "vscode-html-languageserver", "--stdio" },
    root_dir = util.root_dir,
})

require('lspconfig').ltex.setup({
    on_attach = on_attach,
    root_dir = util.root_dir,
    cmd = { "ltex-ls" },
    filetypes = { "markdown", "text", "asciidoc" },
    flags = { debounce_text_changes = 300 },
})

require('lspconfig').lua_ls.setup({
    root_dir = util.root_dir,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
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

require('lspconfig').pylsp.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    handlers = handlers,
    root_dir = util.root_dir,
})

require('lspconfig').pyright.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    handlers = handlers,
    root_dir = util.root_dir,
    settings = {
        pyright = {
            pythonPlatform = "Linux",
            strictParameterNoneValue = false,
            enableTypeIgnoreComments = false,
            reportAssertAlwaysTrue = "none",
            reportMissingImports = "none",
            reportGeneralTypeIssues = "none",
            reportConstantRedefinition = "none",
            reportFunctionMemberAccess = "none",
            reportImportCycles = "none",
            reportIncompatibleMethodOverride = "none",
            reportIncompatibleVariableOverride = "none",
            reportMissingModuleSource = "none",
            reportMissingTypeArgument = "none",
            reportMissingTypeStubs = "none",
            reportOptionalCall = "none",
            reportOptionalIterable = "none",
            reportOptionalMemberAccess = "none",
            reportOptionalOperand = "none",
            reportOptionalSubscript = "none",
            reportPrivateImportUsage = "none",
            reportPrivateUsage = "none",
            reportPropertyTypeMismatch = "none",
            reportUnboundVariable = "none",
            reportUnknownArgumentType = "none",
            reportUnknownLambdaType = "none",
            reportUnknownMemberType = "none",
            reportUnknownParameterType = "none",
            reportUnknownVariableType = "none",
            reportUnnecessaryComparison = "none",
            reportUnnecessaryIsInstance = "none",
            reportUnsupportedDunderAll = "none",
            reportUntypedBaseClass = "none",
            reportUntypedFunctionDecorator = "none",
            reportUnusedClass = "none",
            reportUnusedFunction = "none",
            reportUnusedImport = "none",
            reportUnusedVariable = "none",
        },
        python = {
            analysis = {
                typeCheckingMode = "off",
            }
        }
    },
})

require('lspconfig').robotframework_ls.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    handlers = handlers,
    root_dir = util.root_dir,
    cmd = { "robotframework_ls" },
    filetypes = { "robot" },
    settings = {
        robot = {
            -- codeFormatter = 'robotidy --config ~/.config/robotidy/config.toml',
            codeFormatter = 'robocop',
            editor = {
                ["4spacesTab"] = true,
            },
            lint = {
                robocop = {
                    enabled = true,
                },
            },
        },
    },
})

require('lspconfig').terraformls.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    handlers = handlers,
    root_dir = util.root_dir,
})

require('lspconfig').tflint.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    handlers = handlers,
    root_dir = util.root_dir,
})

require('lspconfig').tsserver.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    handlers = handlers,
    root_dir = util.root_dir,
})

require('lspconfig').yamlls.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    handlers = handlers,
    root_dir = util.root_dir,
    cmd = { "yaml-language-server", "--stdio" },
    settings = {
        yaml = {
            schemas = {
                ["https://raw.githubusercontent.com/awslabs/goformation/master/schema/cloudformation.schema.json"] = "/*"
            },
            hover = false,
            validate = true,
            completion = true,
            customTags = {
                "!Ref",
                "!GetAtt",
                "!Fn",
                "!And",
                "!If",
                "!Not",
                "!Equals",
                "!Or",
                "!FindInMap sequence",
                "!Base64",
                "!Cidr",
                "!Sub",
                "!GetAZs",
                "!ImportValue",
                "!Select sequence",
                "!Split sequence",
                "!Join sequence",
            },
            format_enable = true
        }
    }
})

-- Autocmd
--[[ vim.api.nvim_create_autocmd('FileType', {
    desc = 'Omnifunc for LSP',
    pattern = {
        'python',
        'markdown',
        'javascript',
        'typescript',
        'sh',
        'go',
        'vim',
        'haskell',
        'yaml',
        'terraform',
        'lua'
    },
    group = vim.api.nvim_create_augroup('lsp_omnifunc_enable', { clear = true }),
    callback = function(opts)
        buffer = opts.buf
        vim.api.nvim_buf_set_option(buffer, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    end,
    -- command = "setlocal omnifunc=v:lua.vim.lsp.omnifunc",
}) ]]
