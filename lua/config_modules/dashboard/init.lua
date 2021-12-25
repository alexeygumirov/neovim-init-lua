vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_header = {
[[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
[[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
[[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
[[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
[[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
[[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
}
vim.g.dashboard_custom_section = {
    a = {description = {'  New File                        '}, command = 'enew!'},
    b = {description = {'  Find File                 SPC ff'}, command = 'lua require("telescope.builtin").file_browser({ cwd = require("telescope.utils").buffer_dir() })'},
    c = {description = {'  Search Text               SPC rr'}, command = 'lua require("telescope.builtin").live_grep()'},
    d = {description = {'  Recent Files              SPC fo'}, command = 'lua require("telescope.builtin").oldfiles()'},
    e = {description = {'  Git Files                 SPC gf'}, command = 'lua require("alex.telescope").find_files_or_git_files()'},
    f = {description = {'  VimWiki                   SPC ww'}, command = 'VimwikiIndex'},
    g = {description = {'  Config                          '}, command = 'edit ~/.config/nvim/init.lua'},
}
vim.g.dashboard_custom_footer = {'Press F2 to call dashboard'}
