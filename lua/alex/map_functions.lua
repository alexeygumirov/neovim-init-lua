local M = {}

function M.nmap(lhs, rhs)
  local options = { noremap = true, silent = true }
  vim.api.nvim_set_keymap('n', lhs, rhs, options)
end

function M.imap(lhs, rhs)
  local options = { noremap = true, silent = true }
  vim.api.nvim_set_keymap('i', lhs, rhs, options)
end

function M.vmap(lhs,rhs)
  local options = { noremap = true, silent = true }
  vim.api.nvim_set_keymap('v', lhs, rhs, options)
end

function M.smap(lhs,rhs)
  local options = { noremap = true, silent = true }
  vim.api.nvim_set_keymap('s', lhs, rhs, options)
end

function M.tmap(lhs,rhs)
  local options = { noremap = true, silent = true }
  vim.api.nvim_set_keymap('t', lhs, rhs, options)
end

return M
