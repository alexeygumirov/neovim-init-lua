local utils = require('telescope.utils')
local builtin = require('telescope.builtin')

local M = {}

M.find_files_or_git_files = function()

    vim.cmd('cd %:p:h')
    local _, ret, stderr = utils.get_os_command_output {
        "git",
        "rev-parse",
        "--is-inside-work-tree",
    }

    if ret == 0 then
        builtin.git_files()
    else
        builtin.find_files({ cwd = utils.buffer_dir() })
    end
end

M.git_commits = function()

    vim.cmd('cd %:p:h')
    local _, ret, stderr = utils.get_os_command_output {
        "git",
        "rev-parse",
        "--is-inside-work-tree",
    }
    if ret == 0 then
        builtin.git_commits({ cwd = utils.buffer_dir() })
    end
end

M.git_branches = function()

    vim.cmd('cd %:p:h')
    local _, ret, stderr = utils.get_os_command_output {
        "git",
        "rev-parse",
        "--is-inside-work-tree",
    }
    if ret == 0 then
        builtin.git_branches({ cwd = utils.buffer_dir() })
        vim.cmd('redraw!')
    end
end

return M
