local function spellstatus()
    if vim.o.spell == true then
        if vim.bo.spelllang == nil then
            return ""
        elseif vim.bo.spelllang == "en_us" then
            return "[EN]"
        elseif vim.bo.spelllang == "de_de" then
            return "[DE]"
        elseif vim.bo.spelllang == "ru_ru" then
            return "[RU]"
        end
    elseif vim.o.spell == nil then
        return ""
    elseif vim.o.spell == false then
        return ""
    end
end

local function get_lsp_name()

    local separators = {
        left = '',
        right = '',
    }
    local raw_output = vim.lsp.buf_get_clients(vim.api.nvim_buf_get_number(0))

    local lsp_server_name = ""

    if raw_output ~= nil
    then
        local count = 0
        for k, v in pairs(raw_output) do
            if count == 0 and v.name ~= nil and v.name ~= ""
            then
                lsp_server_name = v.name
            else
                lsp_server_name = lsp_server_name .. ", " .. v.name
            end
            count = count + 1
        end
        if lsp_server_name ~= ""
        then
            lsp_server_name = lsp_server_name .. " " .. separators.left
        end
    end

    return lsp_server_name

end

require('lualine').setup({
    options = {
        icons_enabled = true,
        theme = 'nightfly',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {},
        always_divide_middle = true,
        globalstatus = true,
    },
    sections = {
        lualine_a = { 'mode', spellstatus },
        lualine_b = {
            'branch',
            get_lsp_name,
        },
        lualine_c = {
            {
                'filename',
                file_status = false,
                newfile_status = false,
                path = 3,
                shorting_path = 10,
            }
            -- {
            --     'buffers',
            --     show_filenames_only = false,
            --     show_modified_status = true,
            --     mode = 1,
            -- },
            -- {'filename'},
        },
        lualine_x = {
            'encoding',
            'fileformat',
            {
                'filetype',
                colored = true,
            },
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {
        lualine_a = {
            {
                'buffers',
                show_filenames_only = true,
                show_modified_status = true,
                mode = 0,
                buffers_color = {
                    -- Same values like general color option can be used here.
                    active = { fg = '#092236', bg = '#82aaff' }, -- color for active buffer
                    inactive = { fg = '#a1aab8', bg = '#2c3043' },
                },
            },
        },
        lualine_b = { 'diff',
            --{'diagnostics', sources={'nvim_lsp'}}},
            { 'diagnostics', sources = { 'nvim_diagnostic' } } },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        -- lualine_z = {'tabs'}
        lualine_z = {}
    },
    extensions = {
        'fugitive',
        'fzf',
    }
})
