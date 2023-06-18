local lint = require('lint')

lint.linters_by_ft = {
    -- markdown = {'vale'}
    yaml = { 'cfn_lint', 'yamllint'},
    typescript = { 'eslint' }
}

lint.linters.cfn_lint.cmd = 'cfn-lint'
lint.linters.yamllint.cmd = 'yamllint'

-- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    --     callback = function()
        --         require("lint").try_lint()
        --     end,
        -- })

vim.api.nvim_create_autocmd('FileType', {
    desc = 'Linting for defined file types',
    pattern = {
        "yaml",
    },
    group = vim.api.nvim_create_augroup('linting_on_write', { clear = true }),
    callback = function(opts)
        vim.api.nvim_create_autocmd( {'BufWritePre'}, {
            buffer = opts.buf,
            callback = function()
                require('lint').try_lint()
            end,
        })
    end,
})
