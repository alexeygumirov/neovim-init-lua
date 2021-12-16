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

local M = {}

--  Relative or absolute number lines
M.relative_numbers_toggle = function()

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
M.sha1hash_date = function ()

    local hash_result = vim.fn.systemlist('date +"%s" | sha1sum | cut -d" " -f1')[1]
    if hash_result ~= nil then
        vim.api.nvim_paste(hash_result,"",-1)
    end

end

M.spellcheck_toggle = function()
    
    local changed = false

    if vim.o.spell == false and changed == false then
        vim.o.spell = true
        vim.o.spelllang = "en_us"
        print('Spell check: English (US).')
        changed = true
    end

    if vim.o.spell == true and changed == false then
        if vim.o.spelllang == "en_us" and changed == false then
            vim.o.spelllang = "de_de"
            print('Spell check: Deutsch (DE).')
            changed = true
        end
        if vim.o.spelllang == "de_de" and changed == false then
            vim.o.spelllang = "ru_ru"
            print('Spell check: Русский (RU).')
            changed = true
        end
        if vim.o.spelllang == "ru_ru" and changed == false then
            vim.o.spell = false
            print('Spell check: OFF.')
            changed = true
        end
    end

end

M.json_warnings_toggle = function()

    local changed = false

    if vim.g.vim_json_warnings == 0 and changed == false then
        vim.g.vim_json_warnings = 1
        vim.cmd('redraw!')
        changed = true
    else
        vim.g.vim_json_warnings = 0
        vim.cmd('redraw!')
        changed = true
    end

end

return M
