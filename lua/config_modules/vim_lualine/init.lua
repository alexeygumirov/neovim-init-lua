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

require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'nightfly',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode', spellstatus },
    lualine_b = {
        'branch',
        {
            'filename',
            path = 2,
            shorting_path = 60,
        }
    },
    lualine_c = {
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
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
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
                active = { fg = '#092236', bg =  '#82aaff' }, -- color for active buffer
                inactive = { fg = '#a1aab8', bg = '#2c3043' },
            },
        },
      },
      lualine_b = {'diff',
                  --{'diagnostics', sources={'nvim_lsp'}}},
                  {'diagnostics', sources={'nvim_diagnostic'}}},
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
