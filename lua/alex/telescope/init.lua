local utils = require('telescope.utils')
local builtin = require('telescope.builtin')

local M = {}

function M.find_files_or_git_files()

    vim.cmd('cd %:p:h')
    local _, ret, stderr = utils.get_os_command_output {
        "git",
        "rev-parse",
        "--is-inside-work-tree",
    }

    if ret == 0 then
        builtin.git_files()
    else
        builtin.find_files()
    end
end

function M.grep_git_files()

    local git_root, ret, stderr = utils.get_os_command_output {
        "git",
        "rev-parse",
        "--show-toplevel",
    }

    if ret ~= 0
    then
        print('Not a GIT directory')
    else
        builtin.grep_string({search = "", cwd = git_root[1], only_sort_text = true, word_match = "-w"})
    end

end

function M.git_commits()

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

function M.git_branches()

    vim.cmd('cd %:p:h')
    local _, ret, stderr = utils.get_os_command_output {
        "git",
        "rev-parse",
        "--is-inside-work-tree",
    }
    if ret == 0 then
        builtin.git_branches({ cwd = utils.buffer_dir() })
        vim.cmd('mode')
    end
end

return M
