require("nvim-tree").setup({
    respect_buf_cwd = false,
    update_focused_file = {
        enable = true
    },
    view = {
        float = {
            enable = true,
            open_win_config = {
                width = 100,
                height = 50,
            }
        }
    }
})

local utils = require('telescope.utils')

local M = {}

function M.get_git_root()

    local git_root, ret, stderr = utils.get_os_command_output {
        "git",
        "rev-parse",
        "--show-toplevel",
    }

    if ret ~= 0
    then
        vim.cmd([[
            NvimTreeOpen
        ]])
    else
        vim.cmd('NvimTreeOpen ' .. git_root[1])
    end

end

return M
