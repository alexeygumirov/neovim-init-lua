local M = {}

M.nmap = function(lhs, rhs)
  local options = { noremap = true, silent = true }
  vim.api.nvim_set_keymap('n', lhs, rhs, options)
end

M.imap = function(lhs, rhs)
  local options = { noremap = true, silent = true }
  vim.api.nvim_set_keymap('i', lhs, rhs, options)
end

M.vmap = function(lhs,rhs)
  local options = { noremap = true, silent = true }
  vim.api.nvim_set_keymap('v', lhs, rhs, options)
end

M.tmap = function(lhs,rhs)
  local options = { noremap = true, silent = true }
  vim.api.nvim_set_keymap('t', lhs, rhs, options)
end

return M
