-- vim.g.indentLine_char                    = "|"
vim.g.indentLine_char_list               = { "|", "¦", "┆", "┊" }
vim.g.indentLine_concealcursor           = "ic"
vim.g.indentLine_leadingSpaceChar        = "·"
vim.g.indentLine_leadingSpaceEnabled     = 0
vim.g.indentLine_enabled                 = 0
vim.g.indentLine_bufTypeExclude          = { 'nofile', 'Telescope', 'help', 'Outline'}
vim.g.indentLine_fileTypeExclude         = { 'dashboard', 'Telescope', 'help', 'Outline' }

vim.cmd[[
    autocmd FileType json let g:indentLine_enabled=1
    autocmd FileType json let g:indentLine_leadingSpaceEnabled = 1
    autocmd FileType sh let g:indentLine_enabled=1
    autocmd FileType sh let g:indentLine_leadingSpaceEnabled = 1
    autocmd FileType python let g:indentLine_enabled=1
    autocmd FileType python let g:indentLine_leadingSpaceEnabled = 1
    autocmd FileType go let g:indentLine_enabled=1
    autocmd FileType go let g:indentLine_leadingSpaceEnabled = 1
    autocmd FileType vim let g:indentLine_enabled=1
    autocmd FileType vim let g:indentLine_leadingSpaceEnabled = 1
    autocmd FileType yaml let g:indentLine_enabled=1
    autocmd FileType yaml let g:indentLine_leadingSpaceEnabled = 1
    autocmd FileType javascript let g:indentLine_enabled=1
    autocmd FileType javascript let g:indentLine_leadingSpaceEnabled = 1
    autocmd FileType typescript let g:indentLine_enabled=1
    autocmd FileType typescript let g:indentLine_leadingSpaceEnabled = 1
    autocmd FileType dashboard let g:indentLine_enabled=0
    autocmd FileType dashboard let g:indentLine_leadingSpaceEnabled = 0
]]
-- autocmd FileType markdown let g:indentLine_enabled=1
-- autocmd FileType vimwiki let g:indentLine_enabled=1
