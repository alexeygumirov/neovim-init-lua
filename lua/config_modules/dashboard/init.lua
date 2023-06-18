local home = os.getenv('HOME')
local db = require('dashboard')

db.setup({
    theme = 'doom',
    config = {
        header = {
            '',
            '⠀⠀⠀⢰⣧⠀⠀⠀⠀⠀⠀⠀⠀⣴⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
            '⠀⠀⠀⢿⣿⣦⠀⠀⠀⠀⠀⠀⠀⢿⣿⣷⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀',
            '⠀⠀⠀⠘⢿⣿⣷⣄⠀⠀⠀⠀⠀⢀⣽⢿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀',
            '⠀⠀⠀⠀⠈⠻⣿⣿⣷⣄⠀⠀⣰⠟⠁⠀⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀',
            '⠀⠀⠀⠀⠀⣠⡾⠻⣿⣿⣷⣾⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
            '⠀⠀⠀⢀⣼⡏⠀⠀⠈⠻⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
            '⠀⠀⠀⢸⣿⣧⠀⠀⠀⠀⠈⠻⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
            '⠀⠀⠀⢸⣿⣿⣧⠀⠀⠀⠀⠀⠈⠻⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀',
            '⠀⠀⠀⢀⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⠀⠀⣰⠂⢦⡀⠀⠀⠀',
            '⠀⠀⠈⠙⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠃⠀⠀⣿⠀⢸⡇⠀⠀⠀',
            '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡀⣼⠃⠀⠀⠀',
            '',
        },
        center = {
            {
                icon = '  ',
                icon_hl = 'DashboardCenterIcon',
                desc = 'New File                            ',
                desc_hl = 'DashboardCenter',
                key = 'n',
                key_hl = 'DashboardShortCut',
                action = 'enew!'
            },
            {
                icon = '  ',
                icon_hl = 'DashboardCenterIcon',
                desc = 'Find File',
                desc_hl = 'DashboardCenter',
                key = 'SPC o',
                key_hl = 'DashboardShortCut',
                action = 'lua require("telescope").extensions.file_browser.file_browser({ cwd = require("telescope.utils").buffer_dir() })',
            },
            {
                icon = '  ',
                icon_hl = 'DashboardCenterIcon',
                desc = 'Search text',
                desc_hl = 'DashboardCenter',
                key = 'SPC rr',
                key_hl = 'DashboardShortCut',
                action = 'lua require("telescope.builtin").live_grep()',
            },
            {
                icon = '  ',
                icon_hl = 'DashboardCenterIcon',
                desc = 'Recent files',
                desc_hl = 'DashboardCenter',
                key = 'SPC fo',
                key_hl = 'DashboardShortCut',
                action = 'lua require("telescope.builtin").oldfiles()',
            },
            {
                icon = '  ',
                icon_hl = 'DashboardCenterIcon',
                desc = 'Git Files',
                desc_hl = 'DashboardCenter',
                key = 'SPC gf',
                key_hl = 'DashboardShortCut',
                action = 'lua require("alex.telescope").find_files_or_git_files()',
            },
            {
                icon = '  ',
                icon_hl = 'DashboardCenterIcon',
                desc = 'VimWiki',
                desc_hl = 'DashboardCenter',
                key = 'SPC ww',
                key_hl = 'DashboardShortCut',
                action = 'VimwikiIndex',
            },
            {
                icon = '  ',
                icon_hl = 'DashboardCenterIcon',
                desc = 'My scripts',
                desc_hl = 'DashboardCenter',
                key = 'SPC es',
                key_hl = 'DashboardShortCut',
                action = 'lua require("telescope").extensions.file_browser.file_browser({ cwd = "~/.scripts" })',
            },
            {
                icon = '  ',
                icon_hl = 'DashboardCenterIcon',
                desc = 'Configs',
                desc_hl = 'DashboardCenter',
                key = 'SPC ec',
                key_hl = 'DashboardShortCut',
                action = 'lua require("alex.config_select").get_config()',
            },

        },
        footer = { 'press F2 to call dashboard' }
    },
    hide = {
        statusline = false,
        tabline = true,
        winbar = true
    }
})

-- DashboardHeader DashboardCenter DashboardCenterIcon DashboardShortCut DashboardFooter
vim.cmd([[
    autocmd FileType dashboard :highlight DashboardHeader guifg='#ffffff'
    autocmd FileType dashboard :highlight DashboardCenter guifg='#00a1c9'
    autocmd FileType dashboard :highlight DashboardCenterIcon guifg='#6aaf35'
    autocmd FileType dashboard :highlight DashboardShortCut guifg='#ff5746'
    autocmd FileType dashboard :highlight DashboardFooter guifg='#878787'
]])
