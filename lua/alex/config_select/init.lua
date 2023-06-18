local configs_list = {
    '~/.config/nvim/init.lua',
    '~/.config/xmonad/xmonad.hs',
    '~/.config/xmobar/xmobarrc',
    '~/.config/xmobar/xmobarrc1',
    '~/.config/zsh/zsh_aliases.zsh',
    '~/.config/zsh/zsh_task_spooler.zsh',
    '~/.config/startup/startup-loop.sh',
    '~/.config/startup/common_startup.sh',
    '~/.config/startup/xmonad_startup.sh',
    '~/.config/alacritty/alacritty.yml',
    '~/.config/starship/starship.toml',
    '~/.config/tmux/tmux.conf',
    '~/.config/x11/xresources',
    '~/.bashrc',
    '~/.xprofile',
    '~/.zshrc',
    '~/.zshenv',
}

local actions = require('telescope.actions')
local pickers = require('telescope.pickers')
local finders = require('telescope.finders')
local sorters = require('telescope.sorters')

local opts = {
    prompt_title = 'Configs list',
    finder = finders.new_table(configs_list),
    sorter = sorters.get_generic_fuzzy_sorter({}),

    attach_mappings = function(prompt_bufnr)
        actions.select_default:replace(function()
            -- actions.close(prompt_bufnr)
            -- local selection = action_state.get_selected_entry()
            actions.file_edit(prompt_bufnr)
            vim.cmd("cd %:p:h")
        end)
        return true
    end,
}

local M = {}

function M.get_config()
    pickers.new(opts):find()
end

return M
