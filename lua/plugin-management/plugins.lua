return {
	-- # Colorschemes
	-- 'NLKNguyen/papercolor-theme',
	'alexeygumirov/papercolor-theme',
	'tpope/vim-markdown',
	'neovimhaskell/haskell-vim',
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
	},
	'Yggdroot/indentLine',
	'mhinz/vim-signify',
	'numToStr/Comment.nvim',
	{ 'vimwiki/vimwiki', ft = { 'vimwiki' } },
	'rbgrouleff/bclose.vim',
	{
		'akinsho/toggleterm.nvim',
		version = "*",
		config = true
	},
	'lewis6991/gitsigns.nvim',
	'tpope/vim-fugitive',
	'dhruvasagar/vim-table-mode',
	'junegunn/goyo.vim',
	{
		'jiangmiao/auto-pairs',
		lazy = false,
	},
	'folke/which-key.nvim',
	'ellisonleao/glow.nvim',
	'simrat39/symbols-outline.nvim',
	-- # Autocompletion
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',
	'dcampos/nvim-snippy',
	'neovim/nvim-lspconfig',
	'ray-x/lsp_signature.nvim',
	'onsails/lspkind-nvim',
	-- # Linting
	'mfussenegger/nvim-lint',
	-- # Github Copilot
	'zbirenbaum/copilot.lua',
	-- # Hopping/Jumping
	'phaazon/hop.nvim',
	-- # Status line
	'nvim-lualine/lualine.nvim',
	'nvim-tree/nvim-web-devicons',
	-- # File Explorer
	'nvim-tree/nvim-tree.lua',
	-- # Telescope
	'nvim-lua/plenary.nvim',
	'nvim-telescope/telescope.nvim',
	{
		'nvim-telescope/telescope-fzf-native.nvim',
		build = 'make',
	},
	'nvim-telescope/telescope-fzf-writer.nvim',
	'nvim-telescope/telescope-file-browser.nvim',
	-- # Ctags
	'fcying/telescope-ctags-outline.nvim',
	-- # FZF
	{
		'junegunn/fzf.vim',
		dependencies = {
			'junegunn/fzf',
		},
	},
	-- # Syntax highlighting
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate'
	},
	'nvim-treesitter/nvim-treesitter-textobjects',
	'nvim-treesitter/nvim-treesitter-refactor',
	-- # Colorizer
	'norcalli/nvim-colorizer.lua',
	'hashivim/vim-terraform',
	{
		'kevinhwang91/nvim-bqf',
		event = 'VeryLazy',
		opts = {},
	},
}
