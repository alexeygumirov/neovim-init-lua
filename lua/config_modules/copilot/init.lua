require('copilot').setup({
    panel = {
        enabled = true,
        auto_refresh = false,
        keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>"
        },
        layout = {
            position = "bottom", -- | top | left | right
            ratio = 0.4
        },
    },
    suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 150,
        keymap = {
            accept = "<M-y>",
            accept_word = "<M-i>",
            accept_line = false,
            next = "<M-j>",
            prev = "<M-k>",
            dismiss = "<M-Bslash>",
        },
    },
    filetypes = {
        vimwiki = true,
        python = true,
        markdown = true,
        javascript = true,
        typescript = true,
        sh = true,
        go = true,
        vim = true,
        yaml = true,
        haskell = true,
        terraform = true,
        lua = true,
        ["."] = false,
    },
    copilot_node_command = 'node', -- Node.js version must be > 16.x
    server_opts_overrides = {},
})
