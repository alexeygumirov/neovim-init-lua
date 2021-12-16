-- Configuration of tabstop
vim.o.tabstop       = 4
-- virtual tabstops using spaces
vim.o.shiftwidth    = 4
vim.o.softtabstop   = 4
vim.o.expandtab     = true
vim.o.smarttab      = true

local M = {}

M.expand_tabstops_toggle = function()

	local changed = false
    if vim.o.expandtab == false and changed == false
    then
            vim.o.shiftwidth    = 4
            vim.o.softtabstop   = 4
            vim.o.expandtab     = true
            print("Tabstops are expanded")
			changed = true
    end

    if vim.o.expandtab == true and changed == false
        then
            vim.o.shiftwidth    = 4
            vim.o.softtabstop   = 0
            vim.o.expandtab     = false
            print("Tabstops are not expanded")
			changed = true
    end

end

return M
