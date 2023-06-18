local M = {}

function M.nmap(lhs, rhs, opt)
    local options = { noremap = true, silent = true }
    opt = opt or {}
    for k, v in pairs(opt) do
        options[k] = v
    end
    vim.api.nvim_set_keymap('n', lhs, rhs, options)
end

function M.imap(lhs, rhs, opt)
    local options = { noremap = true, silent = true }
    opt = opt or {}
    for k, v in pairs(opt) do
        options[k] = v
    end
    vim.api.nvim_set_keymap('i', lhs, rhs, options)
end

function M.vmap(lhs, rhs, opt)
    local options = { noremap = true, silent = true }
    opt = opt or {}
    for k, v in pairs(opt) do
        options[k] = v
    end
    vim.api.nvim_set_keymap('v', lhs, rhs, options)
end

function M.smap(lhs, rhs, opt)
    local options = { noremap = true, silent = true }
    opt = opt or {}
    for k, v in pairs(opt) do
        options[k] = v
    end
    vim.api.nvim_set_keymap('s', lhs, rhs, options)
end

function M.tmap(lhs, rhs, opt)
    local options = { noremap = true, silent = true }
    opt = opt or {}
    for k, v in pairs(opt) do
        options[k] = v
    end
    vim.api.nvim_set_keymap('t', lhs, rhs, options)
end

return M
