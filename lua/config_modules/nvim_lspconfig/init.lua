require('lspconfig').bashls.setup({
    cmd_env = {
      GLOB_PATTERN = "*@(.sh|.inc|.bash|.command)"
    },
    filetypes = { "sh", "zsh" }
})
require('lspconfig').cssls.setup({
    cmd = { "vscode-css-languageserver", "--stdio" },
})
require('lspconfig').gopls.setup({})
require('lspconfig').html.setup({
    cmd = { "vscode-html-languageserver", "--stdio" },
})
require('lspconfig').pylsp.setup({})
require('lspconfig').pyright.setup({
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
require('lspconfig').tsserver.setup({
    cmd = { "javascript-typescript-stdio" },
})
-- require('lspconfig').pyright.setup({})

-- local runtime_path = vim.split(package.path, ';')
-- table.insert(runtime_path, "lua/?.lua")
-- table.insert(runtime_path, "lua/?/init.lua")
require('lspconfig').sumneko_lua.setup({
    cmd = { "lua-language-server", "--preview" },
    settings = {
        Lua = {
            runtime = {
                path = '/usr/bin/lua'
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true)
            },
            format = {
                enable = true,
                defaultConfig = {
                    indent_style = 'space',
                    indent_size = '2',
                },
            },
        },
    },
})

require('lspconfig').terraformls.setup({})

require('lspconfig').yamlls.setup({
    cmd = { "yaml-language-server", "--stdio" },
    settings = {
        yaml = {
            schemas = {
                ["https://raw.githubusercontent.com/awslabs/goformation/master/schema/cloudformation.schema.json"] = "/*"
            },
            hover = true,
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
                "!Select",
                "!Split",
                "!Join sequence",
            }
        }
    }
})

-- #### Autocmd
vim.api.nvim_create_autocmd('FileType', {
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
})
