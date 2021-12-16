local nmap = require('alex.map_functions').nmap
local tmap = require('alex.map_functions').tmap
local imap = require('alex.map_functions').imap

-- Changing leader key to Space
vim.g.mapleader     = " "
vim.b.mapleader     = " "

-- Remapping movements between splits to Alt-h,j,k,l
nmap('<A-h>', '<C-w>h')
nmap('<A-j>', '<C-w>j')
nmap('<A-k>', '<C-w>k')
nmap('<A-l>', '<C-w>l')

-- Resizing of splits Ctrl -  ,   ,  ,  
nmap('<C-Left>', '<cmd>vertical resize -5<CR>')
nmap('<C-Right>', '<cmd>vertical resize +5<CR>')
nmap('<C-Up>', '<cmd>resize -2<CR>')
nmap('<C-Down>', '<cmd>resize +2<CR>')

nmap('<leader>sv', '<C-w>t<C-w>H')
nmap('<leader>sh', '<C-w>t<C-w>K')

-- vim.g.fillchars['vert']  = '\'

-- Terminal hotkeys setup
nmap('<leader><leader>tv', '<cmd>vnew term://zsh<CR>')
nmap('<leader><leader>th', '<cmd>new term://zsh<CR>')
tmap('<A-q>', '<C-\\><C-n>')
tmap('<A-h>', '<C-\\><C-N><C-w>h')
tmap('<A-j>', '<C-\\><C-N><C-w>j')
tmap('<A-k>', '<C-\\><C-N><C-w>k')
tmap('<A-l>', '<C-\\><C-N><C-w>l')
imap('<A-h>', '<C-\\><C-N><C-w>h')
imap('<A-j>', '<C-\\><C-N><C-w>j')
imap('<A-k>', '<C-\\><C-N><C-w>k')
imap('<A-l>', '<C-\\><C-N><C-w>l')
