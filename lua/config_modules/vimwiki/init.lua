vim.g.vimwiki_ext2syntax = { [".vwiki"] = "media" }
vim.g.vimwiki_list = {
    {
        ext = ".vwiki",
        path = "~/vimwiki/",
        path_html = "~/vimwiki/public_html/",
        syntax = "default"
    }
}
vim.g.vimwiki_hl_headers = 1
-- vim.g.vimwiki_listsyms = "✗○◐●✓"  -- default
vim.g.vimwiki_listsyms = " ⅓⅔◉✓"


local M = {}

M.vimwiki_pull = function()
    
    vim.cmd('cd ~/vimwiki')
    vim.cmd('Git pull')
    vim.cmd('redrawt')

end


M.vimwiki_push = function()

    local timestamp = os.date("on %d %b %Y at %X")
    vim.cmd('cd ~/vimwiki')
    vim.cmd('Git add .')
    vim.cmd('Git commit -m ' .. '"update from Home laptop ' .. timestamp .. '"')
    vim.cmd('Git push')
    vim.cmd('redrawt')

end

return M
