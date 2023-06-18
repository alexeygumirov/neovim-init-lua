require("toggleterm").setup({
  -- size can be a number or function which is passed the current terminal
  size = function(term)
    if term.direction == "horizontal" then
      return vim.o.lines * 0.4
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = [[<A-t>]],
  direction = 'float' , -- 'vertical' | 'horizontal' | 'tab' | 'float',
  close_on_exit = true, -- close the terminal window when the process exits
  auto_scroll = true, -- automatically scroll to the bottom on terminal output
  shell = '/usr/bin/zsh',
  float_opts = {
    width = function()
        return math.ceil(vim.o.columns * 0.9)
    end,
    height = function()
        return math.ceil(vim.o.lines * 0.9)
    end,
  },
})
