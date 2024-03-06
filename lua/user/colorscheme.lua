local M = {
  "LunarVim/darkplus.nvim",
  lazy = false, -- make sure it gets loaded during startup
  priority = 1000, -- make sure to be the first thing to get loaded
}

function M.config() -- addds this function to M and the name config is expected by lazy
  vim.cmd.colorscheme "darkplus"
end

return M
