local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/nvim/plugged')

Plug('NLKNguyen/papercolor-theme')
Plug('neovimhaskell/haskell-vim')
Plug('tpope/vim-surround')
Plug('Yggdroot/indentLine')
Plug('mhinz/vim-signify')
Plug('tpope/vim-commentary')
Plug('SirVer/ultisnips')
Plug('honza/vim-snippets')
Plug('vimwiki/vimwiki')
-- { integration with lf
Plug('rbgrouleff/bclose.vim')
Plug('ptzz/lf.vim')
Plug('voldikss/vim-floaterm') -- wrapper for floating window
-- }
-- { Git
Plug('airblade/vim-gitgutter')
Plug('tpope/vim-fugitive')
-- }
Plug('dhruvasagar/vim-table-mode')
Plug('junegunn/goyo.vim')
Plug('jiangmiao/auto-pairs')
Plug('folke/which-key.nvim')
Plug('ellisonleao/glow.nvim')
Plug('preservim/tagbar') -- Ctags
Plug('wfxr/minimap.vim') -- VIM Code Minimap. Requires https://github.com/wfxr/code-minimap

-- Autocompletion
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('neovim/nvim-lspconfig')
Plug('ray-x/lsp_signature.nvim')
Plug( 'onsails/lspkind-nvim')
Plug('quangnguyen30192/cmp-nvim-ultisnips')

-- Motion
Plug('phaazon/hop.nvim')

--Status line
Plug('nvim-lualine/lualine.nvim')
Plug('kyazdani42/nvim-web-devicons')

-- Telescope
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-telescope/telescope-fzf-native.nvim', {
    ['do'] = function()
        vim.cmd('make')
    end
})
Plug('nvim-telescope/telescope-fzf-writer.nvim')

-- FZF
Plug('junegunn/fzf', {
    ['do'] = function()
        vim.cmd('fzf#install()')
    end
})
Plug('junegunn/fzf.vim')

-- Syntax highlighting
Plug('nvim-treesitter/nvim-treesitter', {
    ['do'] = function()
        vim.cmd('TSUpdate')
    end
})
-- colorizer
Plug('norcalli/nvim-colorizer.lua')

-- Other
Plug('hashivim/vim-terraform')
Plug('glacambre/firenvim', {
    ['do'] = function()
        vim.fn['firenvim#install'](0)
    end
})

-- Startup screen
Plug('glepnir/dashboard-nvim')

vim.call('plug#end')
