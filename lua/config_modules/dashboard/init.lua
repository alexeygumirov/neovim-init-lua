local home = os.getenv('HOME')
local db = require('dashboard')

db.hide_statusline = false
db.hide_tagline = true
-- db.preview_command = 'cat | lolcat -F 0.2 -p 1.0 -S 25 -s 100'
-- db.preview_file_path = home .. '/.config/nvim/static/dashboard.cat'
-- db.preview_file_height = 10
-- db.preview_file_width = 50
db.custom_header = {
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
    }
db.custom_center = {
    {icon = '  ',
     desc = 'New File                  ',
     shortcut = '      ',
     action ='DashboardNewFile'},
    {icon = '  ',
     desc = 'Find File                 ',
     action = 'lua require("telescope").extensions.file_browser.file_browser({ cwd = require("telescope.utils").buffer_dir() })',
     shortcut = 'SPC o '},
    {icon = '  ',
     desc = 'Search text               ',
     action = 'lua require("telescope.builtin").live_grep()',
     shortcut = 'SPC rr'},
    {icon = '  ',
     desc = 'Recent files              ',
     action = 'lua require("telescope.builtin").oldfiles()',
     shortcut = 'SPC fo'},
    {icon = '  ',
     desc = 'Git Files                 ',
     action = 'lua require("alex.telescope").find_files_or_git_files()',
     shortcut = 'SPC gf'},
    {icon = '  ',
     desc = 'VimWiki                   ',
     action = 'VimwikiIndex',
     shortcut = 'SPC ww'},
    {icon = '  ',
     desc = 'My scripts                ',
     action = 'lua require("telescope").extensions.file_browser.file_browser({ cwd = "~/.scripts" })',
     shortcut = 'SPC es'},
    {icon = '  ',
     desc = 'Configs                   ',
     action = 'lua require("alex.config_select").get_config()',
     shortcut = 'SPC ec'},
    }
db.custom_footer = { '', '', 'press F2 to call dashboard' }

-- DashboardHeader DashboardCenter DashboardCenterIcon DashboardShortCut DashboardFooter
vim.cmd([[
    autocmd FileType dashboard :highlight DashboardHeader guifg='#ffffff'
    autocmd FileType dashboard :highlight DashboardCenter guifg='#00a1c9'
    autocmd FileType dashboard :highlight DashboardCenterIcon guifg='#6aaf35'
    autocmd FileType dashboard :highlight DashboardShortCut guifg='#ff5746'
    autocmd FileType dashboard :highlight DashboardFooter guifg='#878787'
]])
