-- Vim commentary. Adding my file types
vim.cmd[[
    autocmd FileType toml setlocal commentstring=#%s
    autocmd FileType openhab setlocal commentstring=//%s
]]
