local utils = require('telescope.utils')
local builtin = require('telescope.builtin')

local M = {}

function M.launch_lazygit()

    vim.cmd('cd %:p:h')
    local _, ret, stderr = utils.get_os_command_output {
        "git",
        "rev-parse",
        "--is-inside-work-tree",
    }

    if ret == 0 then
        vim.cmd('FloatermNew --title=lazygit lazygit')
    else
        print("Not a git directory!")
    end
end

return M
