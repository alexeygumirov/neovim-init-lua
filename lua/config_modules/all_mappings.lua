local nmap = require('alex.map_functions').nmap
local vmap = require('alex.map_functions').vmap
local imap = require('alex.map_functions').imap

----------------------- Autocommenting ----------------------------
nmap('<leader>ac', '<cmd>setlocal formatoptions-=cro<CR>')
nmap('<leader>aC', '<cmd>setlocal formatoptions=cro<CR>')


----------------------- Conceal level -----------------------------
nmap('<leader>c', '<cmd>lua require("config_modules.conceal").toggle_conceal()<CR>')


----------------------- CTags panel -------------------------------
-- nmap('<leader>B', '<cmd>TagbarToggle<CR>')

----------------------- Dashboard ---------------------------------
nmap('<F2>', '<cmd>Dashboard<CR>')

----------------------- Edit config -------------------------------
nmap('<leader>ec', '<cmd>lua require("alex.config_select").get_config()<CR>')
nmap('<leader>es', '<cmd>lua require("telescope").extensions.file_browser.file_browser({ cwd = "~/.scripts" })<CR>')

----------------------- Indent Line -------------------------------
nmap('<leader>ti', '<cmd>IndentLinesToggle<CR>')
nmap('<leader>ts', '<cmd>LeadingSpaceToggle<CR>')


----------------------- Git status --------------------------------
nmap('<leader>gs', '<cmd>Git<CR>')

----------------------- Git - Lazygit -----------------------------
nmap('<leader>gg', '<cmd>lua require("alex.lazygit").launch_lazygit()<CR>')
nmap('<leader>gd', '<cmd>lua require("alex.lazygit").launch_lazygit_dotfiles()<CR>')

----------------------- FZF Files ---------------------------------
-- nmap('<leader>fs', '<cmd>Files<CR>')

----------------------- List mode ---------------------------------
nmap('<F8>', '<cmd>lua require("config_modules.listmode").list_mode_toggle()<CR>')

----------------------- Vim-Lf ------------------------------------
-- nmap('<leader>o', '<cmd>LfCurrentDirectory<CR>')


----------------------- Minimap -----------------------------------
-- nmap("<leader>``", '<cmd>nohlsearch<CR><cmd>call minimap#vim#ClearColorSearch()<CR>')
-- nmap('<leader>mm', '<cmd>MinimapToggle<CR>')
-- nmap('<leader>mr', '<cmd>MinimapRefresh<CR>')
-- nmap('<leader>mu', '<cmd>MinimapUpdateHighlight<CR>')


----------------------- Nvim-cmp ----------------------------------
nmap('<leader>Ce', '<cmd>lua require("cmp").setup.buffer{ enabled = true }<CR>')
nmap('<leader>Cd', '<cmd>lua require("cmp").setup.buffer{ enabled = false }<CR>')


----------------------- NetRw -------------------------------------
nmap('<leader>nt', '<cmd>NvimTreeToggle<CR>')
nmap('<leader>ng', '<cmd>lua require("config_modules.nvim_tree").get_git_root()<CR>')


----------------------- Nvim-lspconfig ----------------------------
-- nmap('<leader>lh', '<cmd>lua vim.lsp.buf.hover()<CR>')
-- nmap('<leader>ld', '<cmd>lua vim.lsp.buf.definition()<CR>')
-- nmap('<leader>le', '<cmd>lua vim.lsp.buf.declaration()<CR>')
-- nmap('<leader>li', '<cmd>lua vim.lsp.buf.implementation()<CR>')
-- nmap('<leader>ls', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
-- nmap('<leader>lt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
-- nmap('<leader>lr', '<cmd>lua vim.lsp.buf.references()<CR>')
-- nmap('<leader>ly', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
-- nmap('<leader>lw', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')

----------------------- Symbols Outline ---------------------------
nmap('<leader>so', '<cmd>SymbolsOutline<CR>')

----------------------- Tabstops ----------------------------------
nmap('<F9>', '<cmd>lua require("config_modules.tabstops").expand_tabstops_toggle()<CR>')


----------------------- Tmux popup --------------------------------
-- Depends on ~/.scripts/python/tsman
nmap('<leader>gt', '<cmd>silent ! tmux display-popup -w 50 -h 20 -E "tsman"<CR>')

----------------------- Telescope ---------------------------------
-- Telescope: Buffers
nmap('<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>')
-- Telescope: File Browser
nmap('<leader>o',
'<cmd>lua require("telescope").extensions.file_browser.file_browser({ cwd = require("telescope.utils").buffer_dir() })<CR>')
-- Telescope: File Fuzzy Finders
nmap('<leader>fs', '<cmd>lua require("telescope.builtin").find_files()<CR>')
nmap('<leader>fh', '<cmd>lua require("telescope.builtin").find_files({ cwd = "~/" })<CR>')
-- Telescope: Open Old Files
nmap('<leader>fo', '<cmd>lua require("telescope.builtin").oldfiles()<CR>')
-- Telescope: Ctags Outline
nmap('<leader>fc', '<cmd>lua require("telescope").extensions.ctags_outline.outline()<CR>')
-- Telescope: Git Fuzzy Finders
nmap('<leader>gb', '<cmd>lua require("alex.telescope").git_branches()<CR>')
nmap('<leader>gf', '<cmd>lua require("alex.telescope").find_files_or_git_files()<CR>')
nmap('<leader>gc', '<cmd>lua require("alex.telescope").git_commits()<CR>')
-- Telescope: Grep search in VimWiki
nmap('<leader>rw',
'<cmd>lua require("telescope.builtin").grep_string({ search="", search_dirs = {"~/vimwiki/"}, only_sort_text = true, shorten_path = true })<CR>')
-- Telescope: Grep search in Git root project (requires fugitive)
nmap('<leader>rg', '<cmd>lua require("alex.telescope.").grep_git_files()<CR>')
-- Telescope: Grep in home directory
nmap('<leader>rh',
'<cmd>lua require("telescope.builtin").live_grep({ search_dirs = { "~/.scripts", "~/.config" } , only_sort_text = true })<CR>')
-- nmap('<leader>rh', '<cmd>lua require("telescope.builtin").grep_string({ search="", search_dirs = { "~/.scripts", "~/.config" } , only_sort_text = true, shorten_path = true })<CR>')
-- Telescope: Grep in current directory and subdirs
nmap('<leader>rr',
'<cmd>lua require("telescope.builtin").grep_string({ search="", cwd = require("telescope.utils").buffer_dir(), only_sort_text = true, shorten_path = true })<CR>')
-- Telescope: Grep in current file
nmap('<leader>rb', '<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<CR>')
-- Telescope: Grep in opened files (buffers)
nmap('<leader>rl',
'<cmd>lua require("telescope.builtin").grep_string({ search = "",  grep_open_files = true, only_sort_text = true, shorten_path = true })<CR>')


----------------------- Vim Hop ---------------------------------
nmap('<leader>jw', '<cmd>HopWord<CR>')
nmap('<leader>jl', '<cmd>HopLine<CR>')
nmap('<leader>jp', '<cmd>HopPattern<CR>')
-- Vim-Hop dirty hack. To make my colors work
vim.cmd[[
hi HopNextKey guifg=#d70000
hi HopNextKey1 guifg=#d75f00
hi HopNextKey2 guifg=#ffffaf
]]


----------------------- VimWiki ---------------------------------
nmap(',wp', '<cmd>lua require("config_modules.vimwiki").vimwiki_pull()<CR>')
nmap(',wP', '<cmd>lua require("config_modules.vimwiki").vimwiki_push()<CR>')
-- nmap('<leader>wp', '<cmd>! ~/.scripts/sh/vimwikigit -pull<CR>')
-- nmap('<leader>wP', '<cmd>! ~/.scripts/sh/vimwikigit -push<CR>')
nmap(',wc', '<cmd>VimwikiTOC<CR>')


----------------------- Small Tunings -----------------------
-- Buffers re-mapping
nmap('<leader>p', '"+p')
nmap('<leader>P', '"+P')
nmap('<leader>y', '"+yy')
vmap('<leader>y', '"+y')
-- Clear search highlighting
nmap("<leader>``", '<cmd>nohlsearch<CR>')
-- Relative  numbers toggle
nmap('<F3>', '<cmd>lua require("config_modules.small_tunings").relative_numbers_toggle()<CR>')
-- moving between buffers quickly
nmap(',k', '<cmd>bnext|cd %:p:h<CR>')
nmap(',j', '<cmd>bprevious|cd %:p:h<CR>')
nmap(',l', '<cmd>blast|cd %:p:h<CR>')
nmap(',h', '<cmd>bfirst|cd %:p:h<CR>')
nmap(',d', '<cmd>Bclose<CR>')
-- Firefox
nmap('<leader>uu', '<cmd>call jobstart(["firefox","--private-window", expand("<cfile>")], {"detach": v:true})<CR>')
-- Call Goyo
nmap('<leader>G', '<cmd>Goyo<CR>')
--  function to convert MD image link into Hugo shortcode
nmap('<leader>Mh', '<cmd>norm 0yi"o{{< figure alt=""Pk0f(lyE(j0EEa src=""Pk0f[yi[j$a title=""P$a width="" >}}0<CR>')
-- CD into the buffer directory
nmap('<leader>L', '<cmd>cd %:p:h<CR>:pwd<CR>')
-- Insert Sha1 has of the date
nmap('<leader>uh', '<cmd>lua require("config_modules.small_tunings").sha1hash_date()<CR>')
-- Spell check toggle
nmap('<F7>', '<cmd>lua require("config_modules.small_tunings").spellcheck_toggle()<CR>')
-- JSON warnings toggle
nmap('<leader>tj', '<cmd>lua require("config_modules.small_tunings").json_warnings_toggle()<CR>')
-- grip preview
nmap('<leader>tg', '<cmd>silent ! sh -c "grip % &"<CR>')
-- Hugo draft preview
nmap('<leader>td', '<cmd>silent ! bash -c "TmuxHugoPreview.sh -D -F && exit"<CR>')
-- Hugo preview
nmap('<leader>tp', '<cmd>silent ! bash -c "TmuxHugoPreview.sh && exit"<CR>')
-- TreeSitter highlight toggle
nmap('<leader>th', '<cmd>TSBufToggle highlight<CR>')
-- Generate PDF from MD
nmap('<leader>Mp', '<cmd>! bash -c "pdfgenerate -f %"<CR>')
-- Generate DOCX from MD
nmap('<leader>Md', '<cmd>! bash -c "pdfgenerate -f % -o docx"<CR>')
-- Generate ODT from MD
nmap('<leader>Mo', '<cmd>! bash -c "pdfgenerate -f % -o odt"<CR>')
-- Glow for Markdown preview with Glow
nmap('<leader>Mg', '<cmd>Glow<CR>')

-- nmap('<F10>', '<cmd>lua require("config_modules.small_tunings").get_lsp_name()<CR>')
