-- This part must be before plugins are loaded
require('plugin-management') -- Vim-plug            -- ~/.config/nvim/lua/plugin-management.lua
require('alex.settings') -- general settings        -- ~/.config/nvim/lua/alex/settings.lua

-- config modules
require('config_modules.auto_pairs')                -- ~/.config/nvim/lua/config_modules/auto_pairs/init.lua
require('config_modules.colorizer')                 -- ~/.config/nvim/lua/config_modules/colorizer/init.lua
require('config_modules.commentary')                -- ~/.config/nvim/lua/config_modules/commentary/init.lua
require('config_modules.conceal')                   -- ~/.config/nvim/lua/config_modules/conceal/init.lua
require('config_modules.dashboard')                 -- ~/.config/nvim/lua/config_modules/dashboard/init.lua
require('config_modules.firenvim')                  -- ~/.config/nvim/lua/config_modules/firenvim/init.lua
require('config_modules.floaterm')                  -- ~/.config/nvim/lua/config_modules/floaterm/init.lua
require('config_modules.gitgutter')                 -- ~/.config/nvim/lua/config_modules/gitgutter/init.lua
require('config_modules.glow')                      -- ~/.config/nvim/lua/config_modules/glow/init.lua
require('config_modules.haskell_vim')               -- ~/.config/nvim/lua/config_modules/haskell_vim/init.lua
require('config_modules.indent_line')               -- ~/.config/nvim/lua/config_modules/indent_line/init.lua
-- require('config_modules.lf')                        -- ~/.config/nvim/lua/config_modules/lf/init.lua
require('config_modules.listmode')                  -- ~/.config/nvim/lua/config_modules/listmode/init.lua
require('config_modules.lsp_signature')             -- ~/.config/nvim/lua/config_modules/lsp_signature/init.lua
require('config_modules.minimap')                   -- ~/.config/nvim/lua/config_modules/minimap/init.lua
require('config_modules.navigation_remapping')      -- ~/.config/nvim/lua/config_modules/navigation_remapping/init.lua
require('config_modules.netrw')                     -- ~/.config/nvim/lua/config_modules/netrw/init.lua
require('config_modules.nvim_cmp')                  -- ~/.config/nvim/lua/config_modules/nvim_cmp/init.lua
require('config_modules.nvim_lspconfig')            -- ~/.config/nvim/lua/config_modules/nvim_lspconfig/init.lua
require('config_modules.surround')                  -- ~/.config/nvim/lua/config_modules/surround/init.lua
require('config_modules.table_mode')                -- ~/.config/nvim/lua/config_modules/table_mode/init.lua
require('config_modules.tabstops')                  -- ~/.config/nvim/lua/config_modules/tabstops/init.lua
require('config_modules.telescope_nvim')            -- ~/.config/nvim/lua/config_modules/telescope_nvim/init.lua
require('config_modules.treesitter')                -- ~/.config/nvim/lua/config_modules/treesitter/init.lua
require('config_modules.vsnip')                     -- ~/.config/nvim/lua/config_modules/vsnip/init.lua
require('config_modules.vim_hop')                   -- ~/.config/nvim/lua/config_modules/vim_hop/init.lua
require('config_modules.vim_lualine')               -- ~/.config/nvim/lua/config_modules/vim_lualine/init.lua
require('config_modules.vimwiki')                   -- ~/.config/nvim/lua/config_modules/vimwiki/init.lua
require('config_modules.which_key_nvim')            -- ~/.config/nvim/lua/config_modules/which_key_nvim/init.lua
-- color scheme
require('config_modules.colorscheme')               -- ~/.config/nvim/lua/config_modules/colorscheme/init.lua
-- Small tunings in the end (my functions mappings, etc.)
require('config_modules.small_tunings')             -- ~/.config/nvim/lua/config_modules/small_tunings/init.lua

-- Mappings
-- They shall be loaded after configs. Otherwise Lf binding breaks.
require('config_modules.all_mappings')                -- ~/.config/nvim/lua/config_modules/all_mappings.lua
