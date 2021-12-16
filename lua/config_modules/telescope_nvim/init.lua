require('telescope').setup({
        defaults = {
            -- Default configuration for telescope goes here:
            -- config_key = value,
            theme = 'dropdown',
            hidden = true,
            sorting_strategy = 'ascending',
            layout_config = {
                prompt_position = 'top',
                height = 0.8,
                width = 0.8,
                mirror = false,
            },
            mappings = {
                i = {
                    -- map actions.which_key to <C-h> (default: <C-/>)
                    -- actions.which_key shows the mappings for your picker,
                    -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                    ["<C-h>"] = "which_key"
                }
            },
            path_display = { truncate = 3 },
            file_ignore_patterns = { ".git/", ".go/" },
            vimgrep_arguments = {
                "rg",
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--ignore-case",
                "--hidden"
            }
        },
        pickers = {
            -- Default configuration for builtin pickers goes here:
            buffers = {
                theme = 'dropdown',
                previewer = false,
            },
            file_browser = {
                -- theme = 'horizontal',
                hidden = true,
                sorting_strategy = 'ascending',
                layout_config = {
                    prompt_position = 'top',
                    height = 0.8,
                    width = 0.8,
                    mirror = false,
                    preview_width = 0.5,
                },
            },
            git_branches = {
                theme = 'dropdown',
                previewer = false,
            },
            find_files = {
                hidden = true,
                layout_config = {
                    prompt_position = 'top',
                    preview_width = 0.6,
                },
            },
            live_grep = {
                layout_strategy = 'vertical',
                layout_config = {
                    prompt_position = 'top',
                    preview_height = 0.5,
                    height = 0.9,
                    width = 0.9,
                    mirror = true,
                },
            },
            -- picker_name = {
            --   picker_config_key = value,
            --   ...
            -- }
            -- Now the picker_config_key will be applied every time you call this
            -- builtin picker
        },
        winblend = 3,
        extensions = {
            fzf = {
                fuzzy = true,                    -- false will only do exact matching
                override_generic_sorter = true,  -- override the generic sorter
                override_file_sorter = true,     -- override the file sorter
                case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                -- the default case_mode is "smart_case"
            },
            -- Your extension configuration goes here:
            -- extension_name = {
            --   extension_config_key = value,
            -- }
            -- please take a look at the readme of the extension you want to configure
        }
    })

require('telescope').load_extension('fzf')
require('alex.telescope')