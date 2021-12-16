vim.g.AutoPairs = {
    ['('] = ')',
    ['['] = ']',
    ['{'] = '}',
    ["'"] = "'",
    ['"'] = '"',
    ['`'] = '`',
    ['<'] = '>',
}

vim.cmd[[
    au FileType markdown let b:AutoPairs = AutoPairsDefine({'<!--':'-->','{{%':'%}}'})
    au FileType TelescopePrompt let b:autopairs_enabled = 0
]]
