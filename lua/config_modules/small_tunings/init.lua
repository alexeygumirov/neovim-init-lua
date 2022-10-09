-- Autosave and load folding view
vim.cmd[[
    autocmd BufWinLeave *.* silent! mkview
    autocmd BufWinEnter *.* silent! loadview
]]

-- Markdown fenced syntax highlighting
vim.g.markdown_fenced_languages = {"ts=javascript", "css", "javascript", "js=javascript", "json=javascript", "ruby", "sass", "xml", "html", "yaml", "sh", "haskell", "python", "lua"}

-- Python execution path pointing to Virtual Environment
vim.g.python3_host_prog = '/home/alexgum/.virtualenv/neovim/bin/python3'

-- JSON format warnings are off by default
vim.g.vim_json_warnings = 0

-- commands to insert my headers
-- function MyHeader(header)
--     let @o=system("bash -c 'cat ~/.config/myheaders/" . expand(a:header) . "'")
--     norm gg"oP
-- endfunction
-- command -bang -nargs=0 MyHeaderHome :call MyHeader('home')
-- command -bang -nargs=0 MyHeaderWork :call MyHeader('work')
-- command -bang -nargs=0 MyHeaderOther :call MyHeader('other_ubuntu')
-- command -bang -nargs=0 MyYAMLheader :call MyHeader('AGheader.yaml')
-- command -bang -nargs=0 MyYAMLPNheader :call MyHeader('PNheader.yaml')

vim.g.bclose_no_plugin_maps = true

local M = {}

--  Relative or absolute number lines
function M.relative_numbers_toggle()

    local changed = false

    if vim.o.number == true and changed == false then
        vim.o.number = false
        vim.o.relativenumber = false
        changed = true
    end

    if vim.o.number == false and changed == false then
        vim.o.number = true
        vim.o.relativenumber = true
        changed = true
    end

end

-- Command to insert hash
function M.sha1hash_date()

    local hash_result = vim.fn.systemlist('date +"%s" | sha1sum | cut -d" " -f1')[1]
    if hash_result ~= nil then
        vim.api.nvim_paste(hash_result,"",-1)
    end

end

function M.spellcheck_toggle()

    local changed = false

    if vim.o.spell == false and changed == false then
        vim.o.spell = true
        vim.bo.spelllang = "en_us"
        print('Spell check: English (US).')
        changed = true
        return "EN"
    end

    if vim.o.spell == true and changed == false then
        if vim.bo.spelllang == "en_us" and changed == false then
            vim.bo.spelllang = "de_de"
            print('Spell check: Deutsch (DE).')
            changed = true
            return "DE"
        end
        if vim.bo.spelllang == "de_de" and changed == false then
            vim.bo.spelllang = "ru_ru"
            print('Spell check: Русский (RU).')
            changed = true
            return "RU"
        end
        if vim.bo.spelllang == "ru_ru" and changed == false then
            vim.o.spell = false
            print('Spell check: OFF.')
            changed = true
            return ""
        end
    end

end

function M.json_warnings_toggle()

    local changed = false

    if vim.g.vim_json_warnings == 0 and changed == false then
        vim.g.vim_json_warnings = 1
        vim.cmd('redrawt')
        changed = true
    else
        vim.g.vim_json_warnings = 0
        vim.cmd('redrawt')
        changed = true
    end

end

return M
