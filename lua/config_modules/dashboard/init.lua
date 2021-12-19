vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_header = {
' █████╗ ██╗     ███████╗██████╗ ██╗  ██╗       ██████╗' ,
'██╔══██╗██║     ██╔════╝██╔══██╗██║  ██║      ██╔═████╗',
'███████║██║     █████╗  ██████╔╝███████║█████╗██║██╔██║',
'██╔══██║██║     ██╔══╝  ██╔═══╝ ██╔══██║╚════╝████╔╝██║',
'██║  ██║███████╗███████╗██║     ██║  ██║      ╚██████╔╝',
'╚═╝  ╚═╝╚══════╝╚══════╝╚═╝     ╚═╝  ╚═╝       ╚═════╝' ,
}
vim.g.dashboard_custom_section = {
    a = {description = {'  New File           '}, command = 'enew!'},
    b = {description = {'  Find File          '}, command = 'lua require("telescope.builtin").file_browser({ cwd = require("telescope.utils").buffer_dir() })'},
    c = {description = {'  Search Text        '}, command = 'lua require("telescope.builtin").live_grep()'},
    d = {description = {'  Recent Files       '}, command = 'lua require("telescope.builtin").oldfiles()'},
    e = {description = {'  Git Files          '}, command = 'lua require("alex.telescope").find_files_or_git_files()'},
    f = {description = {'  VimWiki            '}, command = 'VimwikiIndex'},
    g = {description = {'  Config             '}, command = 'edit ~/.config/nvim/init.lua'},
}
vim.g.dashboard_custom_footer = {'Press F2 to call dashboard when needed.'}
