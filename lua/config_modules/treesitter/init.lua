require('nvim-treesitter.configs').setup({
    ensure_installed = "all",
    sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    ignore_install = { "beancount", "bibtex", "c", "c_sharp", "clojure", "cmake", "commonlisp", "cpp", "cuda", "d", "dart", "devicetree", "dot", "elixir", "elm", "erlang", "fennel", "fish", "fortran", "fusion", "godot", "glimmer", "ember", "glsl", "gomod", "graphql", "hcl", "heex", "hjson", "http", "jsdoc", "json5", "julia", "kotlin", "ledger", "llvm", "nix", "ocaml", "ocaml_interface", "ocamllex", "perl", "php", "pioasm", "prisma", "pug", "ql", "r", "rst", "ruby", "rust", "scala", "sparql", "supercollider", "surface", "svelte", "swift", "teal", "tlaplus", "tsx", "turtle", "verilog", "vue", "zig", },
    highlight = {
        enable = true,
        -- enable = { "comment", "css", "dockerfile", "go", "html", "java", "javascript", "json", "latex", "lua", "make", "python", "regex", "scss", "toml", "typescript",  "yang" },
        additional_vim_regex_highlighting = false,
        disable = { "bash", "haskell", "markdown", "vim", "yaml", "help"}
    },
    -- indent = { enable = true },
    textobjects = {
        lsp_interop = {
            enable = true,
            border = 'rounded',
            peek_definition_code = {
                ["<leader>df"] = "@function.outer",
                ["<leader>dF"] = "@class.outer",
            },
        },
        select = {
            enable = true,
            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                -- you can optionally set descriptions to the mappings (used in the desc parameter of nvim_buf_set_keymap
                ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
            },
            -- You can choose the select mode (default is charwise 'v')
            selection_modes = {
                ['@parameter.outer'] = 'v', -- charwise
                ['@function.outer'] = 'V', -- linewise
                ['@class.outer'] = '<c-v>', -- blockwise
            },
            -- If you set this to `true` (default is `false`) then any textobject is
            -- extended to include preceding xor succeeding whitespace. Succeeding
            -- whitespace has priority in order to act similarly to eg the built-in
            -- `ap`.
            include_surrounding_whitespace = true,
        },
    },
    refactor = {
        highlight_definitions = {
            enable = true,
            -- Set to false if you have an `updatetime` of ~100.
            clear_on_cursor_move = true,
        },
        navigation = {
            enable = true,
            keymaps = {
                goto_definition = "gnd",
                list_definitions = "gnD",
                list_definitions_toc = "gO",
                goto_next_usage = "<a-*>",
                goto_previous_usage = "<a-#>",
            },
        },
        smart_rename = {
            enable = true,
            keymaps = {
                smart_rename = "grr",
            },
        },
    },
})

local M = {}

function M.winbar_update()

    local status_string = '▶ '
    local treesitter_status = require('nvim-treesitter').statusline({
        indicator_size = 120,
        type_patterns = {
            "class",
            "function",
            "method",
            "import",
            "for",
            "if",
            "while",
            "variable",
            "comment",
            "try",
        },
        transform_fn = function(line) return line:gsub('%s*[%[%(%{]*%s*$', '') end,
        separator = ' ▶ '
    })
    if treesitter_status ~= nil
    then
        status_string = status_string .. treesitter_status
    end
    vim.api.nvim_set_option_value("winbar", status_string, { scope = "local" })

end

return M
