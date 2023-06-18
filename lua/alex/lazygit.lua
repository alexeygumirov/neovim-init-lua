local utils = require('telescope.utils')
local builtin = require('telescope.builtin')
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit_dotfiles = Terminal:new({
        cmd = 'lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME',
        hidden = true,
    })
local lazygit = Terminal:new({
        cmd = 'lazygit',
        hidden = true,
    })

local M = {}

function M.launch_lazygit()

    -- vim.cmd('cd %:p:h')
    local _, ret, stderr = utils.get_os_command_output {
        "git",
        "rev-parse",
        "--is-inside-work-tree",
    }

    if ret == 0 then
        lazygit:toggle()
    else
        print("Not a git directory!")
    end
end

function M.launch_lazygit_dotfiles()

    local opts = {
    }
    lazygit_dotfiles:toggle()
end

return M
