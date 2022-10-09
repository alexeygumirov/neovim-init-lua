vim.o.conceallevel = 2
vim.wo.conceallevel = 2
vim.o.concealcursor = string.gsub(vim.o.concealcursor,"n","")
vim.wo.concealcursor = vim.o.concealcursor

local M = {}

function M.toggle_conceal()

    local changed = false

    if vim.wo.conceallevel == 2 and changed == false
        then
        vim.wo.conceallevel = 0
        vim.wo.concealcursor = ""
        print("Conceal level is 0")
        changed = true
    end

    if vim.wo.conceallevel == 0 and changed == false
    then
        vim.wo.conceallevel = 2
        vim.wo.concealcursor = vim.o.concealcursor
        print("Conceal level is 2")
        changed = true
    end

end

return M
