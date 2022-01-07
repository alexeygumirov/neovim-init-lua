local wk = require("which-key")
wk.setup({
        plugins = {
            marks = true, -- shows a list of your marks on ' and `
            registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
            spelling = {
                enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
                suggestions = 20, -- how many suggestions should be shown in the list?
            },
            presets = {
                operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
                motions = true, -- adds help for motions
                text_objects = true, -- help for text objects triggered after entering an operator
                windows = true, -- default bindings on <c-w>
                nav = true, -- misc bindings to work with windows
                z = true, -- bindings for folds, spelling and others prefixed with z
                g = true, -- bindings for prefixed with g
            },
        },
        operators = { gc = "Comments" },
        key_labels = {
            -- override the label used to display some keys. It doesn't effect WK in any other way.
            -- For example:
            ["<space>"] = "SPC",
            ["<cr>"] = "ENTR",
            ["<tab>"] = "TAB",
        },
        icons = {
            breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
            separator = "➜", -- symbol used between a key and it's label
            group = "+", -- symbol prepended to a group
        },
        popup_mappings = {
            scroll_down = '<c-d>', -- binding to scroll down inside the popup
            scroll_up = '<c-u>', -- binding to scroll up inside the popup
        },
        window = {
            border = "none", -- none, single, double, shadow
            position = "bottom", -- bottom, top
            margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
            padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
            winblend = 0
        },
        layout = {
            height = { min = 4, max = 25 }, -- min and max height of the columns
            width = { min = 20, max = 50 }, -- min and max width of the columns
            spacing = 3, -- spacing between columns
            align = "left", -- align columns left, center or right
        },
        ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
        hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
        show_help = true, -- show help message on the command line when the popup is visible
        triggers = "auto", -- automatically setup triggers
        -- triggers = {"<leader>"} -- or specify a list manually
        triggers_blacklist = {
            -- list of mode / prefixes that should never be hooked by WhichKey
            -- this is mostly relevant for key maps that start with a native binding
            -- most people should not need to change this
            i = { "j", "k" },
            v = { "j", "k" },
        },
    })

wk.register({
        [","] = {
            name = "Buffers",
            d = "Bclose",
            h = "First buffer",
            j = "Previous buffer",
            k = "Next buffer",
            l = "Last buffer",
        },
        ["<leader>"] = {
            a = {
                name = "Autocommenting",
                c  = "Autocommenting Off",
                C  = "Autocommenting On",
            },
            B = "Tags Panel",
            c = "Toggle conceal level",
            C = {
                name = "Completion",
                e  =  "Completion enable",
                d  =  "Completion disable",
            },
            d = "Insert Sha256 hash from the date",
            e = {
                name = "NetRw file explorer",
                a  = "NetRw tree",
                d  = "NetRw in the current directory",
                g  = "NetRw Git root directory",
            },
            f = {
                name = "Telescope",
                b  = "Switch buffers",
                c  = "Ctags search",
                f  = "Telescope File browser",
                h  = "FZF in the home folder",
                o  = "Telescope Old files",
                s  = "FZF in the current folder",
            },
            g = {
                name = "Git",
                b  = "Git-checkout Branch with FZF",
                c  = "Git commits with FZF",
                f  = "Git List-Files with FZF",
                s  = "Git status",
                t  = "Tmux sessions",
            },
            G = "Toggle Goyo",
            h = {
                name = "Hunks (GitGutter)",
                p  = "Preview hunk",
                s  = "Stage hunk",
                u  = "Undo hunk staging",
            },
            j = {
                name = "Jump (Hop)",
                l  = "Jump to line",
                p  = "Jump to pattern",
                w  = "Jump to word",
            },
            l = {
                name = "Language Server",
                d  = "LSP Definition",
                h  = "LSP Hover",
                e  = "LSP dEclaration",
                i  = "LSP Implemetation",
                s  = "LSP Signatire Help",
                t  = "LSP Type definition",
                r  = "LSP References",
                y  = "LSP Document symbol",
                w  = "LSP Workspace symbol",
            },
            m = {
                name = "Mini map",
                m  = "Minimap Toggle",
                r  = "Minimap Refresh",
                u  = "Minimap Update Highlight",
            },
            M = {
                name = "Markdown",
                g  = "MD Preview in Glow",
                h  = "MD image link into Hugo shortcode",
                p  = "Generate PDF from MD",
                d  = "Generate DOCX from MD",
                o  = "Generate ODT from MD",
            },
            L = "CD into the buffer folder",
            p = "Paste below from + buffer",
            P = "Paste above from + buffer",
            r = {
                name = "RipGrep",
                b  = "RipGrep in the current buffer",
                l  = "RipGrep in the all opened buffers",
                g  = "RipGrep in the GIT root folder",
                h  = "RipGrep in the home folder",
                r  = "RipGrep in the current folder",
                w  = "RipGrep in the VimWiki",
            },
            s = {
                name = "Splits",
                v  = "Switch to vertical Split",
                h  = "Switch to Horizontal Split",
            },
            t = {
                name = "Hugo and other",
                g  = "Grip preview of MD",
                i  = "Toggle Indent Line",
                j  = "Toggle JSON errors",
                h  = "TreeSitter Highligh Toggle",
                m  = "Table mode toggle",
                s  = "Toggle leading Space",
                d  = "Hugo pages draft preview",
                p  = "Hugo pages preview",
                t  = "Table Size (Table mode)",
            },
            y = "Copy into the * buffer",
            u = {
                name = "Utils",
                u  = "Open URL in Firefox",
            },
            w = {
                name = "VimWiki actions",
                c  = "VimWiki - Table of Content",
                d  = "VimWiki - Delete file",
                g  = "VimWiki - Push",
                h  = "VimWiki - 2HTML",
                hh = "VimWiki - 2HTML and Browse",
                r  = "VimWiki - Rename",
                u  = "VimWiki - Pull",
                w  = "VimWiki - Index",
            },
            ["`"] = {
                name = "Clean highlight",
                ["`"] = "Clean search highlight",
            },
            [" "] = {
                name = "Terminal",
                t = {
                    name = "Terminal Splits",
                    h = "Terminal Horizontal Split",
                    v = "Terminal Vertical Split",
                },
            },
        },
    })
