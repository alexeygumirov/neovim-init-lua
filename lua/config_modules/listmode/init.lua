vim.o.listchars = "tab:≫.,trail:⇒,eol:▼,nbsp:▊,space:·"
vim.wo.listchars = "tab:≫.,trail:⇒,eol:▼,nbsp:▊,space:·"
vim.o.list      = false
vim.wo.list      = false

local M = {}

function M.list_mode_toggle()
    
    local changed = false

    if vim.wo.list == false and changed == false
    then
        vim.wo.listchars = "tab:≫.,trail:⇒,eol:▼,nbsp:▊,space:·"
        vim.wo.list = true
        print("List mode is ON")
        changed = true
    end

    if vim.wo.list == true and changed == false
    then
        vim.wo.list = false
        print("List mode is OFF")
        changed = true
    end

end

return M
