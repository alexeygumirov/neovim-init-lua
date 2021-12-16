vim.g.netrw_banner          =0
vim.g.netrw_browse_split    = 4
vim.g.netrw_altv            = 1
vim.g.netrw_winsize         = 20
vim.g.netrw_liststyle       = 3
vim.g.netrw_sort_sequence   = "[\\/]$,*"
vim.g.netrw_list_hide       = "\\(^\\|\\s\\s\\)\\zs\\.\\S\\+"

local utils = require('telescope.utils')

local M = {}

M.netrw_git_root = function()

    vim.cmd('cd %:p:h')
    local _, ret, stderr = utils.get_os_command_output {
        "git",
        "rev-parse",
        "--is-inside-work-tree",
    }

    if ret == 0 then
        vim.cmd('Lexplore')
    end

end

return M
