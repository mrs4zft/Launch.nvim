local M = {
  "sindrets/diffview.nvim",
  event = "VeryLazy",
}

function M.config()
  require("diffview").setup({})
end

return M
